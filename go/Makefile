NAME = go
VERSION = 1.1.1
FPM_SOURCE = dir
SOURCE_URL = https://go.googlecode.com/files/$(NAME)$(VERSION).linux-amd64.tar.gz
PACKAGE_URL = http://golang.org
PACKAGE_DESCRIPTION = Go is an open source programming environment that makes it easy to build simple, reliable, and efficient software.

include ../include/base.mk

build: fetch default_build
	mkdir -p $(DESTDIR)/usr/local
	tar zxf $(CACHEDIR)/$(NAME)$(VERSION).linux-amd64.tar.gz -C $(DESTDIR)/usr/local
