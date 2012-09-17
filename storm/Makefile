NAME = storm
VERSION = 0.8.0
DEPENDS := "java6-runtime, storm-jzmq"
FPM_SOURCE = dir
SOURCE_URL = https://github.com/downloads/nathanmarz/storm/storm-$(VERSION).zip
SRC_TGZ = $(notdir $(SOURCE_URL))
PACKAGE_URL = http://storm-project.net/
PACKAGE_DESCRIPTION = Storm is a free and open source distributed realtime computation system.

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); unzip $(CACHEDIR)/$(SRC_TGZ)

build: extract
	cd $(BUILDDIR)/storm-* \
		&& mkdir -p $(DESTDIR)/usr/local \
		&& cp -pR $(BUILDDIR)/storm-* $(DESTDIR)/usr/local/$(NAME)
