# Auto-generated by IDE. All changes by user will be lost!
# Created at 11/03/13 3:01 PM

BASEDIR = $$_PRO_FILE_PWD_

INCLUDEPATH +=  \
    $$BASEDIR/src

SOURCES +=  \
	$$BASEDIR/src/OrderByQueryCollection.cpp \
    $$BASEDIR/src/ODataSource.cpp \
    $$BASEDIR/src/cODataLib.cpp \
    $$BASEDIR/src/moc_ODataSource.cpp \
    $$BASEDIR/src/moc_cODataLib.cpp

HEADERS +=  \
	$$BASEDIR/src/OrderByQueryCollection.h \
    $$BASEDIR/src/LOGGER.h \
    $$BASEDIR/src/ODataLib.h \
    $$BASEDIR/src/ODataSource.h \
    $$BASEDIR/src/cODataLib.h

lupdate_inclusion {
    SOURCES += \
        $$BASEDIR/../assets/*.qml
}

 \
    $${TARGET}.ts
