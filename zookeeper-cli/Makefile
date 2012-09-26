NAME = zookeeper-cli
VERSION = 1.4.0
DEPENDS := java6-runtime
FPM_SOURCE = dir
SOURCE_URL = https://github.com/downloads/linkedin/linkedin-zookeeper/org.linkedin.zookeeper-cli-$(VERSION).tgz
SRC_TGZ = $(notdir $(SOURCE_URL))
PACKAGE_URL = https://github.com/linkedin/linkedin-zookeeper
PACKAGE_DESCRIPTION = A command line (similar to the one bundled with ZooKeeper) with the idea of having a syntax very close to a regular shell

include ../include/base.mk

extract: fetch default_build
	cd $(BUILDDIR); tar xzf $(CACHEDIR)/$(SRC_TGZ)

build: extract
	mkdir -p $(DESTDIR)/usr/local/bin
	cp -pR  $(BUILDDIR)/org.linkedin.zookeeper-cli-$(VERSION) $(DESTDIR)/usr/local/$(NAME)
	ln -s ../$(NAME)/bin/zk.sh  $(DESTDIR)/usr/local/bin/zk.sh
	sed -i -e 's/BASEDIR=.*/BASEDIR=\`dirname \"\$$\( readlink -f \"\$$\{BASH_SOURCE\[0\]\}\" \)\"\`\/\.\./' $(DESTDIR)/usr/local/$(NAME)/bin/zk.sh
