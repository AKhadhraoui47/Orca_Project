SUMMARY = "Calf Production Image"
DESCRIPTION = "This recipe provides production grade image with the on-board application and restricted access"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM = "file://COPYING;md5=801f80980d171dd6425610833a22dbe6"

inherit calf-image

CALF_TYPE = "calfprod"
COMPATIBLE_MACHINE = "^(tilikum)$"
 