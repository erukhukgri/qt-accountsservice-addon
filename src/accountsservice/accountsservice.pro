TARGET = QtAccountsService
QT = core-private gui dbus
TEMPLATE = lib

#QMAKE_DOCS = $$PWD/doc/qtaccountsservice.docconf
load(qt_module)

DEFINES += QT_ACCOUNTSSERVICE_LIB
DBUS_INTERFACES = ../../data/interfaces/org.freedesktop.Accounts.User.xml \
                  ../../data/interfaces/org.freedesktop.Accounts.xml

SOURCES += accountsmanager.cpp \
           useraccount.cpp \
           usersmodel.cpp

PRIVATE_HEADERS += accountsmanager_p.h \
                   useraccount_p.h \
                   usersmodel_p.h
                   
PUBLIC_HEADERS += accountsmanager.h \
                  useraccount.h \
                  usersmodel.h

HEADERS += $$PUBLIC_HEADERS $$PRIVATE_HEADERS
