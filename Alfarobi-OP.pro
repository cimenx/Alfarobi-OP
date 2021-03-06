TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXX += -std=gnu++11

LIBS += \
-lopencv_core -lopencv_highgui -lopencv_imgproc \
-lserial -lpthread

SOURCES += main.cpp \
    motion/head.cpp \
    motion/action.cpp \
    std/minIni/minIni.c \
    std/math/linreg.cpp \
    imgproc/momentdetection.cpp \
    imgproc/circledetection.cpp \
    imgproc/uvcdynctrl/cameracontroll.cpp

OTHER_FILES += \
    imgproc/README.md \
    motion/README.md \
    std/README.md \
    README.md \
    config.ini

HEADERS += \
    motion/head.h \
    motion/action.h \
    motion/subcontroller.h \
    motion/data_subcontroller.h \
    std/threading.h \
    std/speed_test.h \
    std/logfile.h \
    std/minIni/minIni.h \
    std/minIni/minGlue.h \
    std/custom_math.h \
    std/math/linreg.h \
    imgproc/momentdetection.h \
    imgproc/circledetection.h \
    imgproc/uvcdynctrl/cameracontroll.h

