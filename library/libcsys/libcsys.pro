QT       += widgets core network gui charts concurrent

TARGET = csys
TEMPLATE = lib

# disable all build warnings
#CONFIG += warn_off

# Disable Debug on Release
CONFIG(release):DEFINES += QT_NO_DEBUG_OUTPUT

VERSION = 1.0.9
DEFINES += LIBCSYS_LIBRARY

SOURCES += \
    Info/cpu_info.cpp \
    Info/disk_info.cpp \
    Info/memory_info.cpp \
    Info/network_info.cpp \
    Info/process.cpp \
    Info/process_info.cpp \
    Info/system_info.cpp \
    Utils/command_util.cpp \
    Utils/file_util.cpp \
    Utils/format_util.cpp \


HEADERS += \
    libcsys_global.h \
    Info/cpu_info.h \
    Info/disk_info.h \
    Info/memory_info.h \
    Info/network_info.h \
    Info/process.h \
    Info/process_info.h \
    Info/system_info.h \
    Utils/command_util.h \
    Utils/file_util.h \
    Utils/format_util.h \


CONFIG += silent warn_on
MOC_DIR			= ../build/moc
OBJECTS_DIR		= ../build/obj
RCC_DIR			= ../build/qrc
UI_DIR			= ../build/uic

unix {
    target.path = /usr/lib
    INSTALLS += target

        QMAKE_PKGCONFIG_NAME = libcsys
        QMAKE_PKGCONFIG_DESCRIPTION = A Qt based system information viewer
        QMAKE_PKGCONFIG_PREFIX  = $$INSTALL_PREFIX
        QMAKE_PKGCONFIG_LIBDIR  = $$target.path
        #QMAKE_PKGCONFIG_INCDIR  = $$includes.path
        QMAKE_PKGCONFIG_VERSION = $$VERSION
        QMAKE_PKGCONFIG_DESTDIR = pkgconfig
}
