NAME = libmetrics-graphite-java
VERSION = 2.2.0
DEPENDS = 
FPM_SOURCE = dir
SOURCE_URL = http://search.maven.org/remotecontent?filepath=com/yammer/metrics/metrics-graphite/$(VERSION)/metrics-graphite-$(VERSION).jar
PACKAGE_URL = https://github.com/codahale/metrics/tree/master/metrics-graphite
PACKAGE_DESCRIPTION = Graphite Metrics Reporter

include ../include/base.mk

default_fetch: $(CACHEDIR)
	/usr/bin/wget "$(SOURCE_URL)" -O $(CACHEDIR)/metrics-graphite-$(VERSION).jar

build: fetch default_build
	/usr/bin/install -D -m 0644 $(CACHEDIR)/metrics-graphite-$(VERSION).jar \
		$(DESTDIR)/usr/share/java/metrics-graphite-$(VERSION).jar
	cd $(DESTDIR)/usr/share/java; /bin/ln -s metrics-graphite-$(VERSION).jar metrics-graphite.jar
