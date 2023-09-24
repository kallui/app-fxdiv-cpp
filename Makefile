UK_ROOT ?= $(PWD)/.unikraft/unikraft
UK_LIBS ?= $(PWD)/.unikraft/libs
LIBS := $(UK_LIBS)/libcxxabi:$(UK_LIBS)/libcxx:$(UK_LIBS)/libunwind:$(UK_LIBS)/compiler-rt:$(UK_LIBS)/musl:$(UK_LIBS)/libfxdiv

all:
	@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS)

$(MAKECMDGOALS):
	@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS) $(MAKECMDGOALS)
