NAME = phantomjs
VERSION = 1.5.0
FPM_SOURCE = dir
SOURCE_URL = http://phantomjs.googlecode.com/files/${NAME}-${VERSION}-linux-x86_64-dynamic.tar.gz
PACKAGE_URL = http://code.google.com/p/phantomjs/
PACKAGE_DESCRIPTION = Headless WebKit for JavaScript API

include ../include/base.mk

build: fetch default_build
	mkdir -p $(DESTDIR)/usr/local
	cd $(BUILDDIR); tar zxf $(CACHEDIR)/$(NAME)-$(VERSION)-linux-x86_64-dynamic.tar.gz --strip=1 -C $(DESTDIR)/usr/local phantomjs/bin/phantomjs phantomjs/lib/
