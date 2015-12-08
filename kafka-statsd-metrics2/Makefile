NAME = storm-metrics-statsd
VERSION = 0.4.1
DEPENDS := kafka-server (>= 0.8.2.1)
SOURCE_URL = https://bintray.com/artifact/download/airbnb/jars/com/airbnb/kafka-statsd-metrics2/0.4.1/kafka-statsd-metrics2-$(VERSION).jar
FPM_SOURCE = dir
PACKAGE_URL = https://github.com/airbnb/kafka-statsd-metrics2
PACKAGE_DESCRIPTION = kafka-statsd-metrics2 is a module for Kafka that enables reporting metrics to statsd

include ../include/base.mk

build: fetch default_build
	mkdir -p $(DESTDIR)/usr/share/kafka \
	&& cp $(CACHEDIR)/kafka-statsd-metrics2-$(VERSION).jar $(DESTDIR)/usr/share/kafka/
