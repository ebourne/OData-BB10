#Auto-generated by IDE. All changes by user will be lost
BASEDIR = $$_PRO_FILE_PWD_

#INCLUDEPATH += $$BASEDIR/src
#SOURCES += $$BASEDIR/src/*.cpp
#HEADERS += $$BASEDIR/src/*.h*

CONFIG += precompile_header
PRECOMPILED_HEADER = precompiled.h

lupdate_inclusion {
    SOURCES += $$BASEDIR/../assets/*.qml
}
 
TRANSLATIONS = \
    $${TARGET}.ts

