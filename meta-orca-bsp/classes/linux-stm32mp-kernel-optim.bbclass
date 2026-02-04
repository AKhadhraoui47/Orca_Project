DEVICE_DRIVERS_CONFIG_FRAGS = " \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/no-spi-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/no-misc-devices.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/only-scmi-hwmon.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/less-networking-device-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/no-loopback-dev-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/no-sata-pata-dev-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/no-scsi-dev-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/less-input-device-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/less-voltcurr-regulators-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/no-cec-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/no-multimedia-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/less-multifunction-device-drivers.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/no-soundcard-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/no-usb-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/no-freescale-flextimer-pwm.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/device-drivers/less-iio-sensors.config \
    "

DEVICE_DRIVERS_SRC = " \
    file://${LINUX_VERSION}/device-drivers/no-spi-support.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/no-misc-devices.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/only-scmi-hwmon.config;subdir=fragments \    
    file://${LINUX_VERSION}/device-drivers/less-networking-device-support.config;subdir=fragments \ 
    file://${LINUX_VERSION}/device-drivers/no-loopback-dev-support.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/no-sata-pata-dev-support.config;subdir=fragments \    
    file://${LINUX_VERSION}/device-drivers/no-scsi-dev-support.config;subdir=fragments \ 
    file://${LINUX_VERSION}/device-drivers/less-input-device-support.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/less-voltcurr-regulators-support.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/no-cec-support.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/no-multimedia-support.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/less-multifunction-device-drivers.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/no-usb-support.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/no-soundcard-support.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/no-freescale-flextimer-pwm.config;subdir=fragments \
    file://${LINUX_VERSION}/device-drivers/less-iio-sensors.config;subdir=fragments \
    "

NET_SUPPORT_CONFIG_FRAGS = " \
    ${WORKDIR}/fragments/${LINUX_VERSION}/network/less-net-options.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/network/less-net-subsystems.config \
    "
NET_SUPPORT_SRC = " \
    file://${LINUX_VERSION}/network/less-net-options.config;subdir=fragments \
    file://${LINUX_VERSION}/network/less-net-subsystems.config;subdir=fragments \
    "

FS_CONFIG_FRAGS = " \
    ${WORKDIR}/fragments/${LINUX_VERSION}/filesystems/less-filesystems.config \
    "
FS_SUPPORT_SRC = " \
    file://${LINUX_VERSION}/filesystems/less-filesystems.config;subdir=fragments \
    "