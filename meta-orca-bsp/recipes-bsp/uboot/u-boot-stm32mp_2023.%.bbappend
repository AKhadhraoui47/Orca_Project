FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://0001-minimal-default-env.patch"

# Add fragments

KCONFIG_CONFIG_ROOTDIR = "${B}/${@d.getVar('UBOOT_MACHINE', True).split()[0]}"
SRC_URI += "file://fragments/fragment.cfg"
