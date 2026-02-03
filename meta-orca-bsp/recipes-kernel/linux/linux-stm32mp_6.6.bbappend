FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
KERNEL_CONFIG_FRAGMENTS:append = " ${WORKDIR}/fragments/${LINUX_VERSION}/basic.config"
SRC_URI:append = " file://${LINUX_VERSION}/basic.config;subdir=fragments "