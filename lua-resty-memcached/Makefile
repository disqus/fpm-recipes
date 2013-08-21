NAME = lua-resty-memcached
GIT_VERSION = v0.11
VERSION = 0.11
DEPENDS := nginx
FPM_SOURCE = dir
SOURCE_URL = https://github.com/agentzh/lua-resty-memcached/archive/$(GIT_VERSION).zip
SRC_TGZ = $(notdir $(SOURCE_URL))
PACKAGE_URL = https://github.com/liseen/lua-resty-memcached
PACKAGE_DESCRIPTION = Lua memcached client driver for the ngx_lua based on the cosocket API

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); unzip $(CACHEDIR)/$(SRC_TGZ)

build: extract
	cd $(BUILDDIR)/$(NAME)-$(VERSION)* \
		&& mkdir -p $(DESTDIR)/usr/share/lua \
		&& cp -pR $(BUILDDIR)/$(NAME)-$(VERSION)* $(DESTDIR)/usr/share/lua/$(NAME)
