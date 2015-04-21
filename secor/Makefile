NAME = secor
VERSION = 0.1-SNAPSHOT
ITERATION = $(shell date +%s)
DEPENDS := openjdk-7-jre
FPM_SOURCE = dir
SOURCE_URL = https://github.com/pinterest/secor/archive/master.tar.gz
SRC_TGZ = $(notdir $(SOURCE_URL))
PACKAGE_URL = https://github.com/pinterest/secor
PACKAGE_DESCRIPTION = Secor is a service persisting Kafka logs to Amazon S3

include ../include/base.mk

extract: fetch default_build
	tar xzvf $(CACHEDIR)/$(SRC_TGZ) -C $(BUILDDIR)

build: extract
	cd $(BUILDDIR)/secor-master \
		&& mkdir -p $(DESTDIR)/usr/share/secor \
		&& mkdir -p $(DESTDIR)/etc/secor \
		&& mkdir -p $(DESTDIR)/usr/sbin \
		&& mkdir -p $(DESTDIR)/var/log/secor \
		&& mvn package \
		&& tar -zxvf target/secor-$(VERSION)-bin.tar.gz -C $(DESTDIR)/usr/share/secor \
		&& cp $(DESTDIR)/usr/share/secor/*.properties $(DESTDIR)/etc/secor \
		&& cp $(TOP)/secor $(DESTDIR)/usr/sbin
