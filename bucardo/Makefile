NAME = bucardo
VERSION = 4.99.5
SOURCE_URL = http://bucardo.org/downloads/Bucardo-${VERSION}.tar.gz

DEPENDS = "libdbix-safe-perl (>= 1.2.5)" "libdbd-pg-perl (>= 2.16.1)" "libboolean-perl (>= 0.20)"
FPM_SOURCE = dir

PACKAGE_URL = http://bucardo.org/wiki/Bucardo
PACKAGE_DESCRIPTION = Asynchronous PostgreSQL Replication System

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); tar zxf $(CACHEDIR)/$(notdir $(SOURCE_URL))

build: extract
	cd $(BUILDDIR)/Bucardo-$(VERSION); \
		perl Makefile.PL && \
		sed -i -e '/DESTDIR =/ s#=.*#= $(DESTDIR)#' Makefile && \
		make && \
		INSTALL_BASE=$(DESTDIR) make install
	rm $(DESTDIR)/usr/local/lib/perl/5.10.1/perllocal.pod
