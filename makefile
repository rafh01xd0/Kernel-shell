es (9 sloc) 181 Bytes
ifneq ($(KERNELRELEASE),)
# kbuild part of makefile
obj-m  := procmodule.o

else
# normal makefile
KDIR ?= /lib/modules/`uname -r`/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD
endif
