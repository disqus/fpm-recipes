NAME = fatcache
VERSION = 0.1.0
SOURCE_URL = https://github.com/twitter/fatcache/archive/v$(VERSION).tar.gz
SRC_TGZ = $(notdir $(SOURCE_URL))

FPM_SOURCE = dir
PACKAGE_URL = https://github.com/twitter/fatcache
PACKAGE_DESCRIPTION = Memcache on SSD

include ../include/base.mk

export DESTDIR

extract: fetch default_build
	cd $(BUILDDIR); tar xzf $(CACHEDIR)/$(SRC_TGZ)

build: extract
	cd $(BUILDDIR)/fatcache-$(VERSION); \
		autoreconf -fvi && ./configure && make && make install
