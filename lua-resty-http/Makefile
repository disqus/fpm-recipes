NAME = lua-resty-http
GIT_VERSION = f3d7f54db0
VERSION = 0.1~git20130311
DEPENDS := nginx
FPM_SOURCE = dir
SOURCE_URL = https://github.com/liseen/lua-resty-http/archive/$(GIT_VERSION).zip
SRC_TGZ = $(notdir $(SOURCE_URL))
PACKAGE_URL = https://github.com/liseen/lua-resty-http
PACKAGE_DESCRIPTION = Lua http client driver for the ngx_lua based on the cosocket API

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); unzip $(CACHEDIR)/$(SRC_TGZ)

build: extract
	cd $(BUILDDIR)/$(NAME)-$(GIT_VERSION)* \
		&& mkdir -p $(DESTDIR)/usr/share/lua \
		&& cp -pR $(BUILDDIR)/$(NAME)-$(GIT_VERSION)* $(DESTDIR)/usr/share/lua/$(NAME)
