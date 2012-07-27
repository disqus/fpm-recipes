NAME = storm-jzmq
VERSION = 2.1.0-SNAPSHOT
SOURCE_URL = https://github.com/nathanmarz/jzmq/tarball/dd3327d62021077dec66cacc2b21b01c1d46b3cf
GIT_SHA = $(notdir $(SOURCE_URL))
SRC_DIR = nathanmarz-jzmq-$(shell echo $(GIT_SHA) | cut -c 1-7)
DEPENDS = "libzmq1"
FPM_SOURCE = dir

PACKAGE_URL = https://github.com/nathanmarz/jzmq
PACKAGE_DESCRIPTION = Java language binding for 0MQ

include ../include/base.mk

JAVA_HOME ?= /usr/lib/jvm/java-6-openjdk
export JAVA_HOME
export DESTDIR

extract: fetch default_build
	cd $(BUILDDIR); tar xzf $(CACHEDIR)/$(GIT_SHA)

build: extract
	cd $(BUILDDIR)/$(SRC_DIR); \
		./autogen.sh && \
		./configure --prefix=/usr CFLAGS="$(shell dpkg-buildflags --get CFLAGS)" LDFLAGS="-Wl,--as-needed -Wl,-z,defs" && \
		make install
