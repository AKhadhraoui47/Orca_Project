
python () {
    calf_types = ["calfprod", "calfdev", "calfcore"]
    if d.getVar("CALF_TYPE", expand=True) not in calf_types :
        bb.fatal ("Define a compliant value for CALF_TYPE variable")
    d.prependVar("OVERRIDES", "${CALF_TYPE}:")

    bb.note("IMAGE - MACHINE_FEATURES = %s" % d.getVar("MACHINE_FEATURES", True))
    bb.note("IMAGE - OVERRIDES = %s" % d.getVar("OVERRIDES", True))

}

IMAGE_ROOTFS_MAXSIZE = "4194304"

IMAGE_FEATURES:append:calfdev = " dev-pkgs dbg-pkgs tools-debug tools-profile empty-root-password"

IMAGE_INSTALL = "${INIT_MANAGER}"
IMAGE_INSTALL:append:sysv = " ${VIRTUAL-RUNTIME_initscripts} ${VIRTUAL-RUNTIME_login_manager}"
IMAGE_INSTALL:append:calfcore = " bash"
IMAGE_INSTALL:append:calfdev = " packagegroup-core-base-utils packagegroup-core-buildessential"

LINGUAS_INSTALL = ""
IMAGE_LINGUAS = ""

IMAGE_NAME = "${CALF_TYPE}-image"

inherit extrausers
EXTRA_USERS_PARAMS:calfcore ="\
    useradd -p '\$6\$lpjfbhzeD\$ag07iLlCERbW6N87ZP/DjADi1dkMqmI9ZUGmMVM1Ugsx/8JvsG2yeU9CopffttxqrfDH2jHoshC1962ahUlhJ1' calf \
    "
EXTRA_USERS_PARAMS:calfdev ="\
    usermod -p '' root \
    "
inherit core-image
