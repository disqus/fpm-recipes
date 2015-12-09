NAME = kafka-statsd-metrics2
VERSION = 0.4.1
DEPENDS := kafka-server (>= 0.8.2.1)
SOURCE_URL = https://github.com/airbnb/kafka-statsd-metrics2/archive/master.zip
FPM_SOURCE = dir
PACKAGE_URL = https://github.com/airbnb/kafka-statsd-metrics2
PACKAGE_DESCRIPTION = kafka-statsd-metrics2 is a module for Kafka that enables reporting metrics to statsd

include ../include/base.mk

default_fetch: $(CACHEDIR)
	wget "$(SOURCE_URL)" -O $(CACHEDIR)/$(NAME).zip
	cd $(CACHEDIR) && unzip $(NAME).zip 

build: fetch default_build
	mkdir -p $(DESTDIR)/usr/share/kafka/lib
	cd $(CACHEDIR)/$(NAME)-master && \
	./gradlew shadowJar --info
	cp $(CACHEDIR)/$(NAME)-master/build/libs/$(NAME)-master-$(VERSION)-all.jar $(DESTDIR)/usr/share/kafka/lib/$(NAME)-$(VERSION)-all.jar
