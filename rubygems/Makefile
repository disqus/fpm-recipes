NAME = rubygems
VERSION = 1.8.24
DEPENDS := -d ruby1.8
FPM_SOURCE = dir
SOURCE_URL=http://production.cf.rubygems.org/rubygems/$(NAME)-$(VERSION).tgz

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); tar zxf $(CACHEDIR)/$(NAME)-$(VERSION).tgz

build: extract
	cd $(BUILDDIR)/$(NAME)-$(VERSION); ruby setup.rb --no-rdoc --no-ri --destdir=$(DESTDIR)
