NAME = libmx4j-java
VERSION = 3.0.2
DEPENDS = openjdk-6-jre
FPM_SOURCE = dir
SOURCE_URL = http://downloads.sourceforge.net/project/mx4j/MX4J%20Binary/$(VERSION)/mx4j-$(VERSION).tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fmx4j%2Ffiles%2FMX4J%2520Binary%2F$(VERSION)%2Fmx4j-$(VERSION).tar.gz%2Fdownload&use_mirror=superb-sea2
PACKAGE_URL = http://mx4j.sourceforge.net/
PACKAGE_DESCRIPTION = Open Source implementation of the JMX(TM) technology

include ../include/base.mk

default_fetch: $(CACHEDIR)
	/usr/bin/wget "$(SOURCE_URL)" -O $(CACHEDIR)/mx4j-$(VERSION).tar.gz

extract: fetch default_build
	/bin/tar xzf $(CACHEDIR)/mx4j-$(VERSION).tar.gz -C $(BUILDDIR) 

build: extract
	/usr/bin/install -D -m 0644 $(BUILDDIR)/mx4j-$(VERSION)/lib/mx4j.jar \
		$(DESTDIR)/usr/share/java/mx4j-$(VERSION).jar
	/usr/bin/install -D -m 0644 $(BUILDDIR)/mx4j-$(VERSION)/lib/mx4j-remote.jar \
		$(DESTDIR)/usr/share/java/mx4j-remote-$(VERSION).jar
	/usr/bin/install -D -m 0644 $(BUILDDIR)/mx4j-$(VERSION)/lib/mx4j-tools.jar \
		$(DESTDIR)/usr/share/java/mx4j-tools-$(VERSION).jar
	cd $(DESTDIR)/usr/share/java; ln -s mx4j-$(VERSION).jar mx4j.jar \
		&& /bin/ln -s mx4j-remote-$(VERSION).jar mx4j-remote.jar \
		&& /bin/ln -s mx4j-tools-$(VERSION).jar mx4j-tools.jar
