DEPENDS := -d rubygems1.8

ifdef EXTRA_DEPENDS
	DEPENDS := $(EXTRA_DEPENDS)
endif

FPM_SOURCE = gem
FPM_ARGS += $(DEPENDS) --iteration $(ITERATION) -v $(VERSION)

include ../include/base.mk
