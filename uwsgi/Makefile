NAME = uwsgi
VERSION = 1.2.5
SOURCE_URL = http://projects.unbit.it/downloads/uwsgi-$(VERSION).tar.gz 
SRC_TGZ = $(notdir $(SOURCE_URL))

DEPENDS = "libc6 (>= 2.14)" "libsqlite3-0 (>= 3.5.9)" "libuuid1 (>= 2.16)" "libxml2 (>= 2.7.4)" "libyaml-0-2" "libzmq1"
FPM_SOURCE = dir
PACKAGE_URL = http://projects.unbit.it/uwsgi/
PACKAGE_DESCRIPTION = fast, self-healing application container server

include ../include/base.mk

extract: fetch default_build
	tar xzf $(CACHEDIR)/$(SRC_TGZ) -C $(BUILDDIR)

build: extract
	mkdir -p $(DESTDIR)/usr/bin $(DESTDIR)/usr/lib/uwsgi/plugins
	cd $(BUILDDIR)/uwsgi-$(VERSION) && \
		python uwsgiconfig.py --build $(BUILDDIR)/../../package.ini

