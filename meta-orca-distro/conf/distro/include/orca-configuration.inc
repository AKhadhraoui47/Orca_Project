#security with CVE checks
include conf/distro/include/cve-extra-exclusions.inc

#no GPL v3
require conf/distro/include/no-gplv3.inc

OVERRIDES =. "${MNGR_SLCT}:"
MNGR_SLCT ??= "sysd"
INIT_MANAGER:sysd = "systemd"
INIT_MANAGER:sysv = "sysvinit"

#build information file
INHERIT += "image-buildinfo"
IMAGE_BUILDINFO_FILE = "${sysconfdir}/os-release"
TIMESTAMP = "${DATETIME}"
IMAGE_BUILDINFO_VARS = "DISTRO DISTRO_NAME DISTRO_VERSION IMAGE TIMESTAMP"
