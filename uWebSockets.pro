TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += tests/main.cpp \
    src/WebSocketImpl.cpp \
    src/Networking.cpp \
    src/Hub.cpp \
    src/Node.cpp \
    src/WebSocket.cpp \
    src/HTTPSocket.cpp \
    src/Socket.cpp \
    src/Group.cpp \
    src/Extensions.cpp

HEADERS += \
    src/WebSocketProtocol.h \
    src/Networking.h \
    src/WebSocket.h \
    src/Hub.h \
    src/Group.h \
    src/Node.h \
    src/Socket.h \
    src/HTTPSocket.h \
    src/uWS.h \
    src/Extensions.h

LIBS += -lasan -lssl -lcrypto -lz -luv -lpthread

QMAKE_CXXFLAGS += -fsanitize=address -Wno-unused-parameter
QMAKE_CXXFLAGS_RELEASE -= -O1
QMAKE_CXXFLAGS_RELEASE -= -O2
QMAKE_CXXFLAGS_RELEASE *= -O3 -g

INCLUDEPATH += src
