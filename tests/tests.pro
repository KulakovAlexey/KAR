include(gtest_dependency.pri)

TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG += thread
CONFIG -= qt
CONFIG += c++98

QMAKE_CXXFLAGS += -Wall -Wextra -Werror -std=c++98
QMAKE_CFLAGS += -Wall -Wextra -Werror
# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov


HEADERS +=     tst_test1.h \
    ../app/myfunc.h \
    ../app/sq.h \
    fibonachi_test.h \
    test_sq.h

SOURCES +=     main.cpp \
    ../app/myfunc.c \
    ../app/sq.c

INCLUDEPATH += ../app
