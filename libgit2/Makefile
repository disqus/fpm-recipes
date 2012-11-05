NAME = libgit2
VERSION = 0.15.0
SOURCE_URL = https://github.com/libgit2/libgit2/archive/v$(VERSION).zip

FPM_SOURCE = dir

PACKAGE_URL = http://libgit2.github.com/
PACKAGE_DESCRIPTION = portable, pure C implementation of the Git core methods

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); unzip $(CACHEDIR)/$(notdir $(SOURCE_URL))

build: extract
	cd $(BUILDDIR)/libgit2-$(VERSION); \
		mkdir build && cd build; \
		cmake .. -DCMAKE_INSTALL_PREFIX=$(DESTDIR)/usr && cmake --build . --target install;
