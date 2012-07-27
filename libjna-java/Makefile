NAME = libjna-java
VERSION = 3.4.1
DEPENDS := openjdk-6-jre
FPM_SOURCE = dir
SOURCE_URL = https://github.com/twall/jna/blob/$(VERSION)/dist/jna.jar?raw=true
PACKAGE_URL = https://github.com/twall/jna/
PACKAGE_DESCRIPTION = JNA allows you to call directly into native functions using natural Java method invocation
INSTALLED_JAR_NAME = jna.jar

include ../include/base.mk

build: fetch default_build
	/usr/bin/install -D -m 0644 $(CACHEDIR)/jna.jar?raw=true \
		$(DESTDIR)/usr/local/$(NAME)/$(INSTALLED_JAR_NAME)
