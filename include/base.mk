TOP := $(CURDIR)
BUILDDIR = $(TOP)/tmp/build
CACHEDIR = $(TOP)/tmp/cache
DESTDIR = $(TOP)/tmp/dest
PKGDIR = $(TOP)/pkg

.PHONY: all checkversion clean distclean default_build default_fetch \
	 default_package

ifndef ITERATION
ITERATION = 1
endif

FPM_ARGS += $(foreach pkg,$(DEPENDS),-d $(pkg))
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
	-C $(DESTDIR) .
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
	cd $(PKGDIR); $(FPM_CMD)

clean:
	rm -rf tmp

distclean: clean
	rm -rf $(PKGDIR)

default_fetch: $(CACHEDIR)
	cd $(CACHEDIR); wget $(SOURCE_URL)

default_build: $(BUILDDIR) $(DESTDIR)

default_package: $(PKGDIR)

fetch: default_fetch
build: default_build
package: default_package
