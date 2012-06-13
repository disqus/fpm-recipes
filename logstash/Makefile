NAME = logstash
VERSION = 1.1.0
DEPENDS := openjdk-6-jre
FPM_SOURCE = dir
SOURCE_URL = http://semicomplete.com/files/logstash/logstash-1.1.0-monolithic.jar
PACKAGE_URL = http://logstash.net
PACKAGE_DESCRIPTION = logstash is a tool for managing events and logs.
INSTALLED_JAR_NAME = logstash-monolithic.jar

include ../include/base.mk

build: fetch default_build
	/usr/bin/install -D -m 0644 $(CACHEDIR)/$(NAME)-$(VERSION)-monolithic.jar \
		$(DESTDIR)/usr/local/$(NAME)/$(INSTALLED_JAR_NAME)
