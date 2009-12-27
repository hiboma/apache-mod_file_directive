##
##  Makefile -- Build procedure for sample file_directive Apache module
##  Autogenerated via ``apxs -n file_directive -g''.
##

basedir=/path/to/httpd-source
builddir=.
top_srcdir=$(basedir)
top_builddir=$(basedir)
include $(basedir)/build/special.mk

#   the used tools
APXS=apxs
APACHECTL=apachectl

#   additional defines, includes and libraries
#DEFS=-Dmy_define=my_value
#INCLUDES=-Imy/include/dir
#LIBS=-Lmy/lib/dir -lmylib

#   the default target
all: local-shared-build

#   install the shared object file into Apache 
install: install-modules

#   cleanup
clean:
	-rm -f mod_file_directive.o mod_file_directive.lo mod_file_directive.slo mod_file_directive.la 

#   simple test
test: reload
	lynx -mime_header http://localhost/file_directive

#   install and activate shared object by reloading Apache to
#   force a reload of the shared object file
reload: install restart

#   the general Apache start/restart/stop
#   procedures
start:
	$(APACHECTL) start
restart:
	$(APACHECTL) restart
stop:
	$(APACHECTL) stop

