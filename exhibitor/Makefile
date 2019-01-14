NAME = exhibitor
VERSION = 1.7.1
FPM_SOURCE = dir
SOURCE_URL = https://raw.github.com/soabase/exhibitor/exhibitor-$(VERSION)/exhibitor-standalone/src/main/resources/buildscripts/standalone/gradle/build.gradle
GRADLE_VERSION = 5.1.1
PACKAGE_URL = https://github.com/soabase/exhibitor/wiki
PACKAGE_DESCRIPTION = Exhibitor is a Java supervisor system for ZooKeeper

include ../include/base.mk

fetch: default_fetch
	wget http://services.gradle.org/distributions/gradle-$(GRADLE_VERSION)-bin.zip -O $(CACHEDIR)/gradle-bin.zip
	unzip $(CACHEDIR)/gradle-bin.zip -d $(BUILDDIR)

build: default_build fetch
	mkdir -p $(DESTDIR)/usr/share/java
	cp build.gradle $(BUILDDIR)
	cd $(BUILDDIR) && \
		./gradle-$(GRADLE_VERSION)/bin/gradle shadowJar
	mv $(BUILDDIR)/build/libs/exhibitor-$(VERSION).jar $(DESTDIR)/usr/share/java/
	ln -s exhibitor-$(VERSION).jar $(DESTDIR)/usr/share/java/exhibitor.jar
