#configuration
CONFIG +=  cross_compile shared qpa no_mocdepend release qt_no_framework
host_build {
    QT_ARCH = x86_64
    QT_TARGET_ARCH = arm
} else {
    QT_ARCH = arm
    QMAKE_DEFAULT_LIBDIRS = /opt/FriendlyARM/toolchain/4.9.3/lib/gcc/arm-cortexa9-linux-gnueabihf/4.9.3 /opt/FriendlyARM/toolchain/4.9.3/arm-cortexa9-linux-gnueabihf/lib /opt/FriendlyARM/toolchain/4.9.3/arm-cortexa9-linux-gnueabihf/sys-root/lib /opt/FriendlyARM/toolchain/4.9.3/arm-cortexa9-linux-gnueabihf/sys-root/usr/lib
    QMAKE_DEFAULT_INCDIRS = /opt/FriendlyARM/toolchain/4.9.3/arm-cortexa9-linux-gnueabihf/include/c++/4.9.3 /opt/FriendlyARM/toolchain/4.9.3/arm-cortexa9-linux-gnueabihf/include/c++/4.9.3/arm-cortexa9-linux-gnueabihf /opt/FriendlyARM/toolchain/4.9.3/arm-cortexa9-linux-gnueabihf/include/c++/4.9.3/backward /opt/FriendlyARM/toolchain/4.9.3/lib/gcc/arm-cortexa9-linux-gnueabihf/4.9.3/include /opt/FriendlyARM/toolchain/4.9.3/lib/gcc/arm-cortexa9-linux-gnueabihf/4.9.3/include-fixed /opt/FriendlyARM/toolchain/4.9.3/arm-cortexa9-linux-gnueabihf/include /opt/FriendlyARM/toolchain/4.9.3/arm-cortexa9-linux-gnueabihf/sys-root/usr/include
}
QT_CONFIG +=  minimal-config small-config medium-config large-config full-config release_tools no-pkg-config evdev tslib linuxfb c++11 c++14 shared qpa reduce_exports clock-gettime clock-monotonic posix_fallocate mremap getaddrinfo ipv6ifname getifaddrs inotify eventfd threadsafe-cloexec system-jpeg png freetype harfbuzz zlib iconv dbus rpath concurrent audio-backend release

#versioning
QT_VERSION = 5.6.0
QT_MAJOR_VERSION = 5
QT_MINOR_VERSION = 6
QT_PATCH_VERSION = 0

#namespaces
QT_LIBINFIX = 
QT_NAMESPACE = 

QT_EDITION = OpenSource

QT_COMPILER_STDCXX = 199711
QT_GCC_MAJOR_VERSION = 4
QT_GCC_MINOR_VERSION = 9
QT_GCC_PATCH_VERSION = 3
