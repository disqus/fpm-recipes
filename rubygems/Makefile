NAME = rubygems1.8
VERSION = 1.8.24
DEPENDS := ruby1.8
FPM_SOURCE = dir
SOURCE_URL = http://production.cf.rubygems.org/rubygems/rubygems-$(VERSION).tgz
POSTINSTALL = $(CURDIR)/post-install
POSTUNINSTALL = $(CURDIR)/post-uninstall
PACKAGE_URL =  http://www.rubygems.org
PACKAGE_DESCRIPTION = package management framework for Ruby libraries/applications
PACKAGE_PROVIDES = rubygems rubygems1.8

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); tar zxf $(CACHEDIR)/rubygems-$(VERSION).tgz

build: extract
	cd $(BUILDDIR)/rubygems-$(VERSION); ruby setup.rb --no-rdoc --no-ri --destdir=$(DESTDIR)
