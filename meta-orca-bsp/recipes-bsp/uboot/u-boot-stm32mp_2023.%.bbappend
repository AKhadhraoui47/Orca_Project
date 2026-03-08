FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://tilikum_common.h;subdir=git/include/configs/"

# Add fragments

KCONFIG_CONFIG_ROOTDIR = "${B}/${@d.getVar('UBOOT_MACHINE', True).split()[0]}"
SRC_URI += "file://fragments/fragment.cfg"
