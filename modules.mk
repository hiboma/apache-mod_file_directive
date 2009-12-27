mod_file_directive.la: mod_file_directive.slo
	$(SH_LINK) -rpath $(libexecdir) -module -avoid-version  mod_file_directive.lo
DISTCLEAN_TARGETS = modules.mk
shared =  mod_file_directive.la
