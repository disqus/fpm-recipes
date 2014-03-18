NAME = storm-metrics-statsd
VERSION = 0.99+1.0.0-SNAPSHOT
DEPENDS := "storm"
FPM_SOURCE = dir
PACKAGE_URL = https://github.com/endgameinc/storm-metrics-statsd
PACKAGE_DESCRIPTION = storm-metrics-statsd is a module for Storm that enables metrics collection and reporting to statsd

POSTINSTALL = ../post-install.sh
PREUNINSTALL = ../pre-uninstall.sh

include ../include/base.mk

extract: default_build
	cp ../../storm-metrics-statsd/target/storm-metrics-statsd-1.0.0-SNAPSHOT.jar $(BUILDDIR) \
		&& cp ../../storm-metrics-statsd/target/dependency/java-statsd-client-2.0.0.jar $(BUILDDIR)

build: extract
	mkdir -p $(DESTDIR)/usr/share/java \
		&& cp $(BUILDDIR)/*.jar $(DESTDIR)/usr/share/java/
