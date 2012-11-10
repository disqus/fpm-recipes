NAME = strongswan5
VERSION = 5.0.1
SOURCE_URL = http://download.strongswan.org/strongswan-$(VERSION).tar.gz
DEPENDS := "libgmp10"
FPM_SOURCE = dir

PACKAGE_URL = http://www.strongswan.org
PACKAGE_DESCRIPTION = strongSwan 5 Internet Key Exchange (IKE) daemon

include ../include/base.mk

export DESTDIR

extract: fetch default_build
	cd $(BUILDDIR); tar xzf $(CACHEDIR)/$(notdir $(SOURCE_URL))

build: extract
	cd $(BUILDDIR)/strongswan-$(VERSION); \
		./configure --prefix=/usr --localstatedir=/var --sysconfdir=/etc && make && \
                env DESTDIR=$(DESTDIR) make install
