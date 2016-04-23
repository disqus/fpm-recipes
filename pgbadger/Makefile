NAME = pgbadger
VERSION = 2.0
SOURCE_URL = https://github.com/downloads/dalibo/pgbadger/pgbadger-${VERSION}.tar.gz

FPM_SOURCE = dir

PACKAGE_URL = http://dalibo.github.com/pgbadger/
PACKAGE_DESCRIPTION = a fast PostgreSQL log analyzer

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); tar zxf $(CACHEDIR)/$(notdir $(SOURCE_URL))

build: extract
	cd $(BUILDDIR)/pgbadger-$(VERSION); \
		perl Makefile.PL DESTDIR=$(DESTDIR) INSTALLDIRS=vendor && \
		make && make install
