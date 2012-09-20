NAME = keepalived
VERSION = 1.2.7
SOURCE_URL = http://www.keepalived.org/software/keepalived-$(VERSION).tar.gz
DEPENDS := "iproute" "ipvsadm" "libc6 (>= 2.4)" "libpopt0 (>= 1.14)" "libssl0.9.8 (>= 0.9.8f-5)"
FPM_SOURCE = dir

PACKAGE_URL = http://www.keepalived.org/
PACKAGE_DESCRIPTION = Failover and monitoring daemon for LVS clusters

include ../include/base.mk

export DESTDIR

extract: fetch default_build
	cd $(BUILDDIR); tar xzf $(CACHEDIR)/$(notdir $(SOURCE_URL))

build: extract
	cd $(BUILDDIR)/keepalived-$(VERSION); \
		./configure --prefix=/usr && make && \
                env DESTDIR=$(DESTDIR) make install && \
                rm -rf $(DESTDIR)/etc/rc.d && rm -rf $(DESTDIR)/etc/sysconfig && \
                mkdir -p $(DESTDIR)/etc/init.d && cp ../../../keepalived $(DESTDIR)/etc/init.d/
