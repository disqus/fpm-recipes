NAME = nagios-plugins
VERSION = 1.4.15
DEPENDS := libpq5
FPM_SOURCE = dir
SOURCE_URL = http://prdownloads.sourceforge.net/sourceforge/nagiosplug/$(NAME)-$(VERSION).tar.gz
PACKAGE_URL = http://www.nagios.org
PACKAGE_DESCRIPTION = Plugins allow you to monitor hosts, devices, services, protocols, and applications with Nagios.

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); tar zxf $(CACHEDIR)/$(NAME)-$(VERSION).tar.gz

build: extract
	cd $(BUILDDIR)/$(NAME)-$(VERSION); \
		./configure && env DESTDIR=$(DESTDIR) make install
