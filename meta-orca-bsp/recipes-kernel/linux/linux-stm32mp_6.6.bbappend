FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KERNEL_CONFIG_FRAGMENTS:append = " \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-spi-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-misc-devices.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/only-scmi-hwmon.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/less-networking-device-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-loopback-dev-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-sata-pata-dev-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-scsi-dev-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/less-input-device-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/less-voltcurr-regulators-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-cec-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-multimedia-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/less-multifunction-device-drivers.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-soundcard-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-usb-support.config \
    "

SRC_URI:append = " \
    file://${LINUX_VERSION}/no-spi-support.config;subdir=fragments \
    file://${LINUX_VERSION}/no-misc-devices.config;subdir=fragments \
    file://${LINUX_VERSION}/only-scmi-hwmon.config;subdir=fragments \    
    file://${LINUX_VERSION}/less-networking-device-support.config;subdir=fragments \ 
    file://${LINUX_VERSION}/no-loopback-dev-support.config;subdir=fragments \
    file://${LINUX_VERSION}/no-sata-pata-dev-support.config;subdir=fragments \    
    file://${LINUX_VERSION}/no-scsi-dev-support.config;subdir=fragments \ 
    file://${LINUX_VERSION}/less-input-device-support.config;subdir=fragments \
    file://${LINUX_VERSION}/less-voltcurr-regulators-support.config;subdir=fragments \
    file://${LINUX_VERSION}/no-cec-support.config;subdir=fragments \
    file://${LINUX_VERSION}/no-multimedia-support.config;subdir=fragments \
    file://${LINUX_VERSION}/less-multifunction-device-drivers.config;subdir=fragments \
    file://${LINUX_VERSION}/no-usb-support.config;subdir=fragments \
    file://${LINUX_VERSION}/no-soundcard-support.config;subdir=fragments \
    "