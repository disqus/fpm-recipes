NAME = libjna-java
VERSION = 3.4.1
DEPENDS := "libc6 (>= 2.4)" "libffi5 (>= 3.0.4)"
FPM_SOURCE = dir
SOURCE_URL = https://github.com/twall/jna/blob/$(VERSION)/dist/jna.jar?raw=true
PACKAGE_URL = https://github.com/twall/jna/
PACKAGE_DESCRIPTION = Dynamic access of native libraries from Java without JNI

include ../include/base.mk

default_fetch: $(CACHEDIR)
	/usr/bin/wget "$(SOURCE_URL)" -O $(CACHEDIR)/jna-$(VERSION).jar

build: fetch default_build
	/usr/bin/install -D -m 0644 $(CACHEDIR)/jna-$(VERSION).jar \
		$(DESTDIR)/usr/share/java/jna-$(VERSION).jar
	cd $(DESTDIR)/usr/share/java; /bin/ln -s jna-$(VERSION).jar jna.jar
