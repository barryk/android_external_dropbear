ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=\
sftp-server.c sftp-common.c sftp-server-main.c \
addrmatch.c bufaux.c buffer.c compat.c log.c \
openbsd-compat/bsd-misc.c openbsd-compat/bsd-statvfs.c \
openbsd-compat/fmt_scaled.c openbsd-compat/getopt.c openbsd-compat/port-tun.c \
openbsd-compat/pwcache.c \
openbsd-compat/strmode.c openbsd-compat/strtonum.c openbsd-compat/vis.c \
match.c misc.c \
xmalloc.c

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := sftp-server

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

endif  # TARGET_SIMULATOR != true

include $(call all-makefiles-under,$(LOCAL_PATH))
