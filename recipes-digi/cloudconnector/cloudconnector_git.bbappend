# insert appropriate licensing statement here

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "	\
	file://cc.conf \
"

# set default recipe variables
CC_DEVICE_TYPE      ?= "DEY device"
CC_FIRMWARE_VERSION ?= "0.0.0.1"
CC_DESCRIPTION      ?= ""
CC_CONTACT          ?= ""
CC_LOCATION         ?= ""
CC_VDIR_UPDATE_PATH ?= "/mnt/update"
CC_FW_DWNLD_PATH    ?= "/mnt/update"
CC_LOG_LEVEL        ?= "error"


do_install:append() {
	install -m 0600 ${WORKDIR}/cc.conf ${D}${sysconfdir}/cc.conf
	sed -i  -e "s,##CC_DEVICE_TYPE##,${CC_DEVICE_TYPE},g" \
                -e "s,##CC_FIRMWARE_VERSION##,${CC_FIRMWARE_VERSION},g" \
                -e "s,##CC_DESCRIPTION##,${CC_DESCRIPTION},g" \
		-e "s,##CC_CONTACT##,${CC_CONTACT},g" \
		-e "s,##CC_LOCATION##,${CC_LOCATION},g" \
		-e "s,##CC_VDIR_UPDATE_PATH##,${CC_VDIR_UPDATE_PATH},g" \
		-e "s,##CC_FW_DWNLD_PATH##,${CC_FW_DWNLD_PATH},g" \
		-e "s,##CC_LOG_LEVEL##,${CC_LOG_LEVEL},g" \
                ${D}${sysconfdir}/cc.conf
}
