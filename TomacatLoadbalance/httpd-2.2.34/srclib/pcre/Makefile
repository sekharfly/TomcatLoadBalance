top_srcdir   = /home/sekharvaana/Desktop/TomacatLoadbalance/httpd-2.2.34
top_builddir = /home/sekharvaana/Desktop/TomacatLoadbalance/httpd-2.2.34
srcdir       = /home/sekharvaana/Desktop/TomacatLoadbalance/httpd-2.2.34/srclib/pcre
builddir     = /home/sekharvaana/Desktop/TomacatLoadbalance/httpd-2.2.34/srclib/pcre
VPATH        = /home/sekharvaana/Desktop/TomacatLoadbalance/httpd-2.2.34/srclib/pcre
LTLIBRARY_NAME = libpcre.la
LTLIBRARY_SOURCES = maketables.c get.c study.c pcre.c

CLEAN_TARGETS = dftables chartables.c
DISTCLEAN_TARGETS = pcre.h pcre-config config.h config.log config.status $(CLEAN_TARGETS)

include $(top_srcdir)/build/ltlib.mk

config.h:
	touch $@

$(LTLIBRARY_OBJECTS) dftables.lo: config.h

dftables: dftables.lo
	$(LINK) $(EXTRA_LDFLAGS) dftables.lo $(EXTRA_LIBS)

$(srcdir)/chartables.c: dftables
	./dftables $@

pcre.lo: $(srcdir)/chartables.c
