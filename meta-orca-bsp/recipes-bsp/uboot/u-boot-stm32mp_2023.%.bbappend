FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://0001-uboot-env-minimal.patch file://0002-uboot-env-minimal.patch file://0003-undef-redundant-macro.patch" 

KCONFIG_CONFIG_ROOTDIR = "${B}/${@d.getVar('UBOOT_MACHINE', True).split()[0]}"
SRC_URI += "file://fragments/boot.cfg"
