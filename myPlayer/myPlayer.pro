#-------------------------------------------------
#
# Project created by QtCreator 2015-06-13T23:00:53
#
#-------------------------------------------------

QT       += core gui multimedia

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = myPlayer
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    musiclibrary.cpp \
    music.cpp \
    playlist.cpp

HEADERS  += mainwindow.h \
    musiclibrary.h \
    music.h \
    playlist.h

FORMS    += mainwindow.ui

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../Downloads/taglib-1.9.1/build/taglib/release/ -ltag
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../Downloads/taglib-1.9.1/build/taglib/debug/ -ltag
else:unix: LIBS += -L$$PWD/../../../Downloads/taglib-1.9.1/build/taglib/ -ltag

INCLUDEPATH += $$PWD/../../../Downloads/taglib-1.9.1/build/taglib
DEPENDPATH += $$PWD/../../../Downloads/taglib-1.9.1/build/taglib

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../Downloads/taglib-1.9.1/build/bindings/c/release/ -ltag_c
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../Downloads/taglib-1.9.1/build/bindings/c/debug/ -ltag_c
else:unix: LIBS += -L$$PWD/../../../Downloads/taglib-1.9.1/build/bindings/c/ -ltag_c

INCLUDEPATH += $$PWD/../../../Downloads/taglib-1.9.1/build/bindings/c
DEPENDPATH += $$PWD/../../../Downloads/taglib-1.9.1/build/bindings/c
