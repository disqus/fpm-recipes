NAME = zookeeper
VERSION = 3.4.4
DEPENDS := "java6-runtime"
FPM_SOURCE = dir
SOURCE_URL = http://mirror.cogentco.com/pub/apache/zookeeper/zookeeper-$(VERSION)/zookeeper-$(VERSION).tar.gz
SRC_TGZ = $(notdir $(SOURCE_URL))
PACKAGE_URL = http://zookeeper.apache.org/
PACKAGE_DESCRIPTION = High-performance coordination service for distributed applications

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); tar xzf $(CACHEDIR)/$(SRC_TGZ)

build: extract
	cd $(BUILDDIR)/zookeeper-* \
		&& mkdir -p $(DESTDIR)/usr/local \
		&& cp -pR $(BUILDDIR)/zookeeper-* $(DESTDIR)/usr/local/$(NAME)
