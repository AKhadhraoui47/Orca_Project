inherit linux-stm32mp-kernel-optim

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
KERNEL_CONFIG_FRAGMENTS:append = " \
    ${DEVICE_DRIVERS_CONFIG_FRAGS} \
    ${NET_SUPPORT_CONFIG_FRAGS} \
    "
SRC_URI:append = " \
    ${DEVICE_DRIVERS_SRC} \
    ${NET_SUPPORT_SRC} \
    "