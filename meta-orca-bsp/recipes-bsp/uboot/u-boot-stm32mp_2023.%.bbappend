FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://0001-change-stm32mp-bootcmd.patch file://tilikum_common.h;subdir=git/include/configs/"
