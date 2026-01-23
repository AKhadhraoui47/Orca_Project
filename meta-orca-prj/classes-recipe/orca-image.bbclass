inherit image

python () {
    orca_types = ["orcaprod", "orcadev", "orcacore"]
    if d.getVar("ORCA_TYPE", expand=True) not in orca_types :
        bb.fatal ("Define a compliant value for ORCA_TYPE variable")
    d.prependVar("OVERRIDES", "${ORCA_TYPE}:")
}

IMAGE_FEATURES = "splash"
IMAGE_FEATURES:append:orcadev = " dev-pkgs dbg-pkgs perf empty-root-password"

IMAGE_INSTALL = "${INIT_MANAGER}"
IMAGE_INSTALL:append:sysv = " ${VIRTUAL-RUNTIME_initscripts} ${VIRTUAL-RUNTIME_login_manager}"
IMAGE_INSTALL:append:orcacore = " bash"
IMAGE_INSTALL:append:orcadev = " packagegroup-core-base-utils packagegroup-core-buildessential"

IMAGE_NAME = "${ORCA_TYPE}-image"

inherit extrausers
EXTRA_USERS_PARAMS:orcacore ="\
    useradd -p '\$6\$lpjfbhzeD\$ag07iLlCERbW6N87ZP/DjADi1dkMqmI9ZUGmMVM1Ugsx/8JvsG2yeU9CopffttxqrfDH2jHoshC1962ahUlhJ1' mpuser \
    "
