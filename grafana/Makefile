NAME = grafana
VERSION = 1.8.0
FPM_SOURCE = dir
SOURCE_URL = http://grafanarel.s3.amazonaws.com/grafana-$(VERSION).tar.gz
SRC_TGZ = $(notdir $(SOURCE_URL))
PACKAGE_URL = http://grafana.org/
PACKAGE_DESCRIPTION = An open source, feature rich metrics dashboard and graph editor for Graphite, InfluxDB & OpenTSDB.

include ../include/base.mk

extract: fetch default_build
	tar xzf $(CACHEDIR)/$(SRC_TGZ) -C $(BUILDDIR)

build: extract
	cd $(BUILDDIR)/$(NAME)-$(VERSION) \
		&& mkdir -p $(DESTDIR)/usr/share \
		&& cp -pR $(BUILDDIR)/$(NAME)-$(VERSION) $(DESTDIR)/usr/share/$(NAME)
