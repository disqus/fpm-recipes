NAME = memkeys
VERSION = 0.1-75fc345374db179872caac9332a644d59dbea147
HASH_VERSION = $(shell echo $(VERSION) | cut -d - -f 2)
SOURCE_URL = https://github.com/tumblr/memkeys/archive/$(HASH_VERSION).tar.gz
SRC_TGZ = $(notdir $(SOURCE_URL))

DEPENDS := "libpcrecpp0" "libncurses5" "libpcap0.8"
FPM_SOURCE = dir
PACKAGE_URL = https://github.com/tumblr/memkeys
PACKAGE_DESCRIPTION = memkeys

include ../include/base.mk

export DESTDIR

extract: fetch default_build
	cd $(BUILDDIR); tar xzf $(CACHEDIR)/$(SRC_TGZ)

build: extract
	cd $(BUILDDIR)/memkeys-$(firstword $(subst ., ,$(SRC_TGZ))); \
		./autogen.sh && make install
