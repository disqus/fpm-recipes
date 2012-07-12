NAME = kafka
VERSION = 0.7.1-incubating
DEPENDS := openjdk-6-jre
FPM_SOURCE = dir
SOURCE_URL = http://mirrors.sonic.net/apache/incubator/kafka/kafka-$(VERSION)/kafka-$(VERSION)-src.tgz
SRC_TGZ = $(notdir $(SOURCE_URL))
PACKAGE_URL = http://incubator.apache.org/kafka/index.html
PACKAGE_DESCRIPTION = Apache Kafka is a distributed publish-subscribe messaging system

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); tar xzf $(CACHEDIR)/$(SRC_TGZ)

build: extract
	cd $(BUILDDIR)/kafka-$(VERSION) \
		&& ./sbt update \
		&& ./sbt package \
		&& mkdir -p $(DESTDIR)/usr/local \
		&& cp -pR $(BUILDDIR)/kafka-$(VERSION) $(DESTDIR)/usr/local/$(NAME)
