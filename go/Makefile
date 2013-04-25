NAME = go
VERSION = 1.0.3
FPM_SOURCE = dir
SOURCE_URL = https://go.googlecode.com/files/$(NAME)$(VERSION).linux-amd64.tar.gz
PACKAGE_URL = http://golang.org
PACKAGE_DESCRIPTION = Go is an open source programming environment that makes it easy to build simple, reliable, and efficient software.
DOWNLOADED_FILE = $(NAME)$(VERSION).linux-amd64.tar.gz

include ../include/base.mk

$(DESTDIR)/usr/local:
	mkdir -p $(DESTDIR)/usr/local
	tar zxf $(CACHEDIR)/$(DOWNLOADED_FILE) -C $(DESTDIR)/usr/local

build: default_build $(DESTDIR)/usr/local
