SUMMARY = "Basic Image"
DESCRIPTION = "This image is for learning purposes to explore the different possibilities of improvements in terms of features and project architecture"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM = "file://COPYING;md5=801f80980d171dd6425610833a22dbe6"

inherit image

IMAGE_FEATURES = ""
IMAGE_INSTALL = "packagegroup-core-boot"

inherit extrausers
EXTRA_USERS_PARAMS = "\
    useradd -p '\$6\$fHgrTJlX\$RrYsTiiU89eJz8HoweYm3rbGbcJals25dlvD.gwELP8mBChKDLFtEz/CiToPMuQEUHlJoW7Esf4nGEZ4QJFRh.' mpuser; \
    "