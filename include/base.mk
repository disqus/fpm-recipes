BUILDDIR = tmp/build
CACHEDIR = tmp/cache
PKGDIR = pkg

.PHONY: all checkversion clean distclean build package

ifndef ITERATION
ITERATION = 1
endif

all: build package

checkversion:
ifndef VERSION
$(error Did not specify package version)
endif


$(BUILDDIR):
	mkdir -p $(BUILDDIR)

$(TMPDIR):
	mkdir -p $(TMPDIR)

$(PKGDIR):
	mkdir -p $(PKGDIR)
	cd $(PKGDIR); fpm -t deb -s $(FPM_SOURCE) $(FPM_ARGS) $(NAME)

clean:
	rm -rf $(BUILDDIR) $(CACHEDIR)

distclean: clean
	rm -rf $(PKGDIR)

build: $(BUILDDIR)

package: $(PKGDIR)
