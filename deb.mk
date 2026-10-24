# Opt-in .deb packaging for system/core libraries.
# 用法（envsetup 的 shell 里）：
#   cd system/core
#   command make deb          -> liblog_<ver>_armhf.deb, libcutils_<ver>_armhf.deb
#   command make deb-dev      -> 头文件包，安装到 /system/include
#   command make deb-static   -> 静态库包，安装到 /system/lib
DEB_TOP := $(abspath $(CURDIR)/../..)

DEB_PACKAGES := liblog libcutils

DEB_INCDIRS_liblog := include/log include/android
DEB_INCDIRS_libcutils := libcutils/include/cutils libcutils/include/private

DEB_DESC_liblog := Android logging library (liblog)
DEB_DESC_libcutils := Android C utility library (libcutils)

include $(DEB_TOP)/build/make/tools/deb/deb.mk
