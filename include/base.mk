TOP := $(CURDIR)
BUILDDIR = $(TOP)/tmp/build
CACHEDIR = $(TOP)/tmp/cache
DESTDIR = $(TOP)/tmp/dest
PKGDIR = $(TOP)/pkg
PKGFILE = $(NAME)_$(VERSION)-$(ITERATION)_amd64.deb

.PHONY: all checkversion clean distclean default_build default_package fetch

ifndef ITERATION
ITERATION = 1
endif

NULL :=
SPACE := $(NULL) $(NULL)

DQUOTE = "
# Stupid highlighting, let's give it another double-quote "

# Makes '-d "$1"' if $1 is a non-empty string
add_d = $(if $(strip $1),-d "$(strip $1)")

# Replace spaces with +, explode on ", then call add_d after turning + back into spaces
# This is to support: DEPENDS = "package (>= 1.0)" other_pack "some_other_packge"
# GNU Make implictly thinks a space is a delimiter, so have to change it to read the above line
quoted_map = $(foreach i,$(subst $(DQUOTE),$(SPACE),$(subst $(SPACE),+,$2)),$(call $1,$(subst +,$(SPACE),$i)))

FPM_ARGS += $(call quoted_map,add_d,$(DEPENDS))

FPM_ARGS += --iteration $(ITERATION) -v $(VERSION)

ifdef LICENSE
FPM_ARGS += --license $(LICENSE)
endif

ifdef PACKAGE_DESCRIPTION
FPM_ARGS += --description "$(PACKAGE_DESCRIPTION)"
endif

ifdef PACKAGE_PROVIDES
FPM_ARGS += $(foreach pkg,$(PACKAGE_PROVIDES),--provides $(pkg))
endif

ifdef PACKAGE_URL
FPM_ARGS += --url $(PACKAGE_URL)
endif

ifdef POSTINSTALL
FPM_ARGS += --after-install $(POSTINSTALL)
endif

ifdef POSTUNINSTALL
FPM_ARGS += --after-remove $(POSTUNINSTALL)
endif

ifdef PREINSTALL
FPM_ARGS += --before-install $(PREINSTALL)
endif

ifdef PREUNINSTALL
FPM_ARGS += --before-uninstall $(PREUNINSTALL)
endif

ifeq ($(FPM_SOURCE),dir)
FPM_CMD := fpm -t deb -s $(FPM_SOURCE) $(FPM_ARGS) -n $(NAME) \
	-C $(DESTDIR) --deb-user root --deb-group root .
else
FPM_CMD := fpm -t deb -s $(FPM_SOURCE) $(FPM_ARGS) $(NAME)
endif

all: build package

checkversion:
ifndef VERSION
$(error Did not specify package version)
endif

$(BUILDDIR):
	mkdir -p $(BUILDDIR)

$(CACHEDIR):
	mkdir -p $(CACHEDIR)

$(DESTDIR):
	mkdir -p $(DESTDIR)

$(PKGDIR):
	mkdir -p $(PKGDIR)

$(PKGDIR)/$(PKGFILE): $(PKGDIR)
	cd $(PKGDIR); $(FPM_CMD)

$(CACHEDIR)/$(DOWNLOADED_FILE):
	cd $(CACHEDIR); wget -O $(DOWNLOADED_FILE) $(SOURCE_URL)

clean:
	rm -rf tmp

distclean: clean
	rm -rf $(PKGDIR)

default_build: $(BUILDDIR) $(DESTDIR) fetch
default_package: $(PKGDIR)/$(PKGFILE)

fetch: $(CACHEDIR) $(CACHEDIR)/$(DOWNLOADED_FILE)

build: default_build
package: default_package
