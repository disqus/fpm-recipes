NAME = kibana3
VERSION = 3.1.0
FPM_SOURCE = dir
SOURCE_URL = https://download.elasticsearch.org/kibana/kibana/kibana-$(VERSION).tar.gz
SRC_TGZ = $(notdir $(SOURCE_URL))
PACKAGE_URL = http://www.elasticsearch.org/overview/kibana/
PACKAGE_DESCRIPTION = Kibana is Elasticsearch’s data visualization engine, allowing you to natively interact with all your data in Elasticsearch via custom dashboards.

include ../include/base.mk

extract: fetch default_build
	tar xzf $(CACHEDIR)/$(SRC_TGZ) -C $(BUILDDIR)

build: extract
	cd $(BUILDDIR)/kibana-$(VERSION) \
		&& mkdir -p $(DESTDIR)/usr/share \
		&& cp -pR $(BUILDDIR)/kibana-$(VERSION) $(DESTDIR)/usr/share/$(NAME)
