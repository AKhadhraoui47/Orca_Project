FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KERNEL_CONFIG_FRAGMENTS:append = " \
    ${WORKDIR}/fragments/${LINUX_VERSION}/only-goodix-touchscreen.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-virtio-drivers.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-usb-support.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-swap.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-stm32mp157.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-spi.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-smp.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-nfs-no-ntfs.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-multimedia.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-miscdevices.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-kprobes.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-joystick-keyb-mice.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-extra-wireless-devices.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-ethernet-no-usb-adapter.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-efigpt-support-no-legacyautoloading.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-debug.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-cpu-freqscaling.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-cfg80211-no-nfc.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-can-subsystem.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/no-ata-devices.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/network-options.config \
    ${WORKDIR}/fragments/${LINUX_VERSION}/gzip-only-ramfs.config"

SRC_URI:append = " \
    file://${LINUX_VERSION}/only-goodix-touchscreen.config;subdir=fragments \
    file://${LINUX_VERSION}/no-virtio-drivers.config;subdir=fragments \
    file://${LINUX_VERSION}/no-usb-support.config;subdir=fragments \
    file://${LINUX_VERSION}/no-swap.config;subdir=fragments \
    file://${LINUX_VERSION}/no-stm32mp157.config;subdir=fragments \
    file://${LINUX_VERSION}/no-spi.config;subdir=fragments \
    file://${LINUX_VERSION}/no-smp.config;subdir=fragments \
    file://${LINUX_VERSION}/no-nfs-no-ntfs.config;subdir=fragments \
    file://${LINUX_VERSION}/no-multimedia.config;subdir=fragments \
    file://${LINUX_VERSION}/no-miscdevices.config;subdir=fragments \
    file://${LINUX_VERSION}/no-kprobes.config;subdir=fragments \
    file://${LINUX_VERSION}/no-joystick-keyb-mice.config;subdir=fragments \
    file://${LINUX_VERSION}/no-extra-wireless-devices.config;subdir=fragments \
    file://${LINUX_VERSION}/no-ethernet-no-usb-adapter.config;subdir=fragments \
    file://${LINUX_VERSION}/no-efigpt-support-no-legacyautoloading.config;subdir=fragments \
    file://${LINUX_VERSION}/no-debug.config;subdir=fragments \
    file://${LINUX_VERSION}/no-cpu-freqscaling.config;subdir=fragments \
    file://${LINUX_VERSION}/no-cfg80211-no-nfc.config;subdir=fragments \
    file://${LINUX_VERSION}/no-can-subsystem.config;subdir=fragments \
    file://${LINUX_VERSION}/no-ata-devices.config;subdir=fragments \
    file://${LINUX_VERSION}/network-options.config;subdir=fragments \
    file://${LINUX_VERSION}/gzip-only-ramfs.config;subdir=fragments "