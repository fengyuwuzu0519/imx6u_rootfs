CONFIG +=  cross_compile compile_examples qpa largefile precompile_header enable_new_dtags pcre
QT_BUILD_PARTS +=  libs
QT_NO_DEFINES =  ACCESSIBILITY ALSA CUPS EGL EGLFS EGL_X11 FONTCONFIG GLIB IMAGEFORMAT_JPEG LIBPROXY NIS OPENGL OPENSSL OPENVG PULSEAUDIO SSL STYLE_GTK XRENDER
QT_QCONFIG_PATH = 
host_build {
    QT_CPU_FEATURES.x86_64 =  mmx sse sse2
} else {
    QT_CPU_FEATURES.arm = 
}
QT_COORD_TYPE = double
QT_LFLAGS_ODBC   = -lodbc
styles += mac fusion windows
DEFINES += QT_NO_MTDEV
DEFINES += QT_NO_LIBUDEV
DEFINES += QT_NO_LIBINPUT
QMAKE_X11_PREFIX = /usr
INCLUDEPATH +=  "/usr/local/tslib/include"
LIBS +=  -L"/usr/local/tslib/lib"
sql-drivers =  sqlite
sql-plugins = 
