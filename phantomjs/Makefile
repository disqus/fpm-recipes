NAME = phantomjs
VERSION = 1.7.0
FPM_SOURCE = dir
SOURCE_URL = http://phantomjs.googlecode.com/files/${NAME}-${VERSION}-linux-x86_64.tar.bz2
PACKAGE_URL = http://code.google.com/p/phantomjs/
PACKAGE_DESCRIPTION = Headless WebKit for JavaScript API

include ../include/base.mk

build: fetch default_build
	mkdir -p $(DESTDIR)/usr
	cd $(BUILDDIR); tar xvf $(CACHEDIR)/$(NAME)-$(VERSION)-linux-x86_64.tar.bz2 --strip=1 -C $(DESTDIR)/usr phantomjs-1.7.0-linux-x86_64/bin
