# ORCA Project

Through this project i aim to solidify my understanding and mastering of the Yocto project and Bitbake specifically.

This project delivers a customizable linux distribution with different image flavors. The result is ran and tested on the *STM32MP135F-DK* board but it aims to be hardware independant for *DISTRO* and *IMAGE* components and applications.

## Key Goals

-   **Portability:** Make the distribution hardware-independant and portable to different platforms
-   **Security:** Enhance security through enabling CVE-Checks, security flags and exploring *secure boot*
-   **Reproducibilty:** KAS file describes thouroughly all the dependencies and the required layers to reproduce the image for the mentioned board
-   **Isolation:** All required python packages are installed in a python virtual environment and all builds are produced within a KAS container
-   **Abstraction:** Image flavors can be tuned through some variables. Also, a [setup bash script](scripts/setuporca) as a wrapper to the KAS container to control few project specific requirements.
-   **Leightweight:** Customizing the image and optimizing the kernel to reduce ressources consumption and make the image as specific to the application requirements as possible

## Notes

This project was developed over the [scarthgap release](https://wiki.yoctoproject.org/wiki/Releases) of Yocto Project and its corresponding [2.8 bitbake release](https://wiki.yoctoproject.org/wiki/Releases).

The KAS version used in this project is kas 5.1.

Rearranging the project structure may cause some problems with the [setup script](scripts/setuporca), so avoid changing the layout of the project.

As mentionned above, this project should be portable and you should be able to run it on different hardware as a *Raspberry-pi* just by updating the [main kas file](kas/kas-orca.yml) and the [layers file](kas/include/layers.yml).

## Build the project 

To build the project for the first time you can follow these steps, start by changing to the desired directory:

```bash
user@hostname:~$ cd dir
```
Clone the project:

```bash
user@hostname:~/dir$ git clone git@github.com:AKhadhraoui47/Orca_Project.git
```

We will start by setting up the environment, directories and installing the different requirements (e.g KAS) by running the [setup script](#setuporca-script):

```bash
user@hostname:~/dir/Orca_Project$ cd Orca_Project
user@hostname:~/dir/Orca_Project$ ./scripts/setuporca prepare
```

Now you can launch the build process:

```bash
user@hostname:~/dir/orca$ ./scripts/setuporca build kas/kas-orca.yml
```

Now you're all set to launch your *STM32MP135F-DK* board. To populate the image to your sd card, please refer to the official [STM32MP Wiki](https://wiki.st.com/stm32mpu/wiki/How_to_populate_the_SD_card_with_dd_command). If you're flashing using the *USB DFU* refer to the [Stm32Programmer](https://wiki.st.com/stm32mpu/wiki/STM32CubeProgrammer#How_to_flash_with_STM32CubeProgrammer).  

## Setuporca Script

The [setuporca script](scripts/setuporca) is a wrapper over KAS container and provides some abstraction to the environment setup process, configurations and container usage.

The script can be executed anywhere from your filesystem, so it would be useful to add its path the *PATH* environment variable: 

```bash
user@hostname:~/dir$ export PATH=$PATH:/path/to/setuporca 
```

### Setup Prepare

```bash
user@hostname:~/dir$ setuporca prepare dir/to/share/
```

-   This command must be run the first time you clone the project. To prepare the project environment, run the *setuporca* with the *prepare* plugin, optionally you can provide the path to a specific directory (absolute or relative) where shared *downloads* and *sstate-cache* are available. If ignored a shared directory *YoctoShare/* will be automatically at the same level where the project was cloned. Note that the provided directory if not ignored must provide *downloads* and *sstate-cache* sub-directories.

-   This plugin reponsible for setting the python virtual environment where KAS will be installed isolated from your host system.

-   Determines a set of ressources limiting variables for Bitbake and Make, as it sets BB_NUMBER_THREADS and PARALELL_MAKE to **half the number of available logical cores**. You can manually change the values after running the prepare command in [local.yml](kas/include/local.yml).

-   If for any reason you changed the path to the shared directories where *downloads* and *sstate-cache* files are available you need to rerun the command, so the the **shared volume** between the host and KAS container is updated.

### Setup Shell

```bash
user@hostname:~/dir$ setuporca shell dir/to/kas-file.yml
```

-   Launches KAS container shell that can be exploited debugging or inspecting the values of some variables, based on the configuration files in the [KAS directory](kas/)

### Setup Build

```bash
user@hostname:~/dir$ setuporca build dir/to/kas-file.yml
```

-   Launches the build based on the configuration of the KAS files.

### Setup Clean

```bash
user@hostname:~/dir$ setuporca clean dir/to/kas-file.yml
```

-   Removes the artifacts directory *build/tmp/*.

## About the Distribution

The theme for this project is based these core elements:

-   **Shell:** Bash
-   **Base-Utils:** Core-utils
-   **Init Manager:** Systemd or Sysvinit, defined according to the variable *MNGR_SLCT* in [orca.conf file](meta-orca-distro/conf/distro/orca.conf)
-   **C Library:** Glibc
-   **Graphics:** No graphics (for now)

## About the Image

Different image flavors are provided serving different purposes. You can choose which to use through *ORCA_TYPE* variable in [orca-image.bb](meta-orca-prj/recipes-images/orca/orca-image.bb).

-   **orcadev:** Providing development tools, libraries, compiler, make, debugging tools as gdb, and profiling tools ... (root access with empty-password).
-   **orcaprod:** Production image with builtin main application and limited user permissions. (ongoing developement)
-   **orcacore:** Basic image that is just able to boot, with user **login**: mpuser, **passwd:** linux.

## References

-   [Techleef Yocto Tutorial](https://www.youtube.com/watch?v=jmGmaY4qyWg&list=PLNpnO_Q_GAdRvyaiqXqFDc4B9nz2MvWnF): This serie is highly recommended, the content provided by the channel is an absolute gem. Special thanks to Eng. Talel Belhaj SALEM.
-   [Official Yocto Documentation](https://docs.yoctoproject.org/5.0.15/index.html), [Official Bitbake User Manual](https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-intro.html): Do not skip documentation, it is the best and most solid way to learn and advance with complex systems as Yocto and Bitbake.
-   [Official KAS Documentation](https://kas.readthedocs.io/en/5.1/): Both Kas and KAS container are available through this link.

