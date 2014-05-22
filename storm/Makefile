NAME = storm
VERSION = 0.9.0.1
ITERATION = 3
DEPENDS := "java-runtime, storm-jzmq"
FPM_SOURCE = dir
SOURCE_URL = https://github.com/apache/incubator-storm/archive/$(VERSION).tar.gz
SRC_TGZ = $(notdir $(SOURCE_URL))
PACKAGE_URL = http://storm-project.net/
PACKAGE_DESCRIPTION = Storm is a free and open source distributed realtime computation system.

include ../include/base.mk

verify:
	dpkg -l storm-jzmq > /dev/null

extract: fetch default_build
	tar xzf $(CACHEDIR)/$(SRC_TGZ) -C $(BUILDDIR)

current_dir = $(shell pwd)
patch:
	cd $(BUILDDIR)/incubator-storm-$(VERSION) \
		&& find $(current_dir) -name "*.patch" | sort | xargs -n1 patch -p1 -i

build: verify extract patch
	cd $(BUILDDIR)/incubator-storm-$(VERSION) \
		&& bash bin/build_release.sh \
		&& mv storm-$(VERSION).tar.gz ../ \
		&& cd ../ \
		&& tar xvf storm-$(VERSION).tar.gz

	cd $(BUILDDIR)/storm-$(VERSION) \
		&& mkdir -p $(DESTDIR)/usr/local/$(NAME) \
		&& cp -pR $(BUILDDIR)/storm-*/* $(DESTDIR)/usr/local/$(NAME)
