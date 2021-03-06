QT       += core gui
QT       += network
QT       += core

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
DEFINES += Q_COMPILER_INITIALIZER_LISTS

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG(release, debug|release)
{

}

CONFIG(debug, debug|release)
{

}


SOURCES += \
    chatservermain.cpp \
    client.cpp \
    clientchatsocket.cpp \
    commands.cpp \
    connectserverdialog.cpp \
    main.cpp \
    mainwindow.cpp \
    serversocket.cpp

HEADERS += \
    chatservermain.h \
    client.h \
    clientchatsocket.h \
    commands.h \
    connectserverdialog.h \
    mainwindow.h \
    serversocket.h

FORMS += \
    client.ui \
    connectserverdialog.ui \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    Data.qrc
