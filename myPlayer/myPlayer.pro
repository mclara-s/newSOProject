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
    playlist.cpp \
    dialog.cpp

HEADERS  += mainwindow.h \
    musiclibrary.h \
    music.h \
    playlist.h \
    dialog.h

FORMS    += mainwindow.ui \
    dialog.ui

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/build/taglib/release/ -ltag
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/build/taglib/debug/ -ltag
else:unix: LIBS += -L$$PWD/build/taglib/ -ltag

INCLUDEPATH += $$PWD/build/taglib
DEPENDPATH += $$PWD/build/taglib

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/build/bindings/c/release/ -ltag_c
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/build/bindings/c/debug/ -ltag_c
else:unix: LIBS += -L$$PWD/build/bindings/c/ -ltag_c

INCLUDEPATH += $$PWD/build/bindings/c
DEPENDPATH += $$PWD/build/bindings/c
