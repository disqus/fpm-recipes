NAME = erlang-nox
VERSION = 1:15.b.1
VER_LIST = $(subst ., ,$(word 2,$(subst :, ,$(VERSION))))
MAJOR_VERSION = $(word 1,$(VER_LIST))
MINOR_VERSION = $(shell printf '%02d' $(word 3,$(VER_LIST)))
ERLANG_VERSION = R$(MAJOR_VERSION)B$(MINOR_VERSION)
SOURCE_URL = http://www.erlang.org/download/otp_src_$(ERLANG_VERSION).tar.gz
SRC_TGZ = $(notdir $(SOURCE_URL))

DEPENDS := "procps" "libc6 (>= 2.7)" "libncurses5 (>= 5.6+20071006-3)" "libssl0.9.8 (>= 0.9.8k-1)"
FPM_SOURCE = dir
PACKAGE_URL = http://www.erlang.org
PACKAGE_DESCRIPTION = erlang vm and minimum dependencies

include ../include/base.mk

export LANG = C
export DESTDIR

extract: fetch default_build
	cd $(BUILDDIR); tar xzf $(CACHEDIR)/$(SRC_TGZ)

build: extract
	cd $(BUILDDIR)/$(firstword $(subst ., ,$(SRC_TGZ))); \
		./configure --prefix=/usr --enable-m64-build --without-javac && make install
