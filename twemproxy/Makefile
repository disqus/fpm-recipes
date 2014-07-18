NAME = twemproxy
VERSION = 0.3.0
ITERATION = disqus-1
DOWNLOAD_VERSION = 0d3084be2c4d3d8cb64cb6199db3413d2cbcda42
SOURCE_URL = https://github.com/twitter/twemproxy/archive/$(DOWNLOAD_VERSION).tar.gz
FPM_SOURCE = dir

PACKAGE_URL = https://github.com/twitter/twemproxy
PACKAGE_DESCRIPTION = A fast, light-weight proxy for memcached and redis

include ../include/base.mk

export DESTDIR

extract: fetch default_build
	cd $(BUILDDIR); \
	tar xzf $(CACHEDIR)/$(notdir $(SOURCE_URL)); \
	mv twemproxy-$(DOWNLOAD_VERSION) twemproxy-$(VERSION)

build: extract
	cd $(BUILDDIR)/twemproxy-$(VERSION); \
	autoreconf -fvi && \
	./configure --prefix=/usr && make && \
	env DESTDIR=$(DESTDIR) make install
