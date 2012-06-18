NAME = libzmq1
VERSION = 2.2.0
SOURCE_URL = http://download.zeromq.org/zeromq-$(VERSION).tar.gz

DEPENDS := "libuuid1 (>= 2.16)"
FPM_SOURCE = dir

PACKAGE_URL = http://www.zeromq.org/
PACKAGE_DESCRIPTION = ZeroMQ Shared Library

include ../include/base.mk

export DESTDIR

extract: fetch default_build
	cd $(BUILDDIR); tar xzf $(CACHEDIR)/$(notdir $(SOURCE_URL))

build: extract
	cd $(BUILDDIR)/zeromq-$(VERSION); \
		./configure && make install
