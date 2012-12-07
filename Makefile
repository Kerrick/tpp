# tpp Makefile by Nico Golde <nico@ngolde.de>
# Latest Change: Sam Jul 31 00:58:01 CEST 2004 
#################################################

BIN = tpp  
prefix=/usr/local
INSPATH= $(prefix)/bin/
DOCPATH = $(prefix)/share/doc/tpp
MANPATH = $(prefix)/man/man1

install :
	mkdir -p $(DOCPATH)	
	install -m644 CHANGES COPYING README THANKS $(DOCPATH)	
	install -m644 doc/tpp.1 $(MANPATH)
	install tpp.rb $(INSPATH)$(BIN)		
	mkdir -p $(DOCPATH)/contrib
	mkdir -p $(DOCPATH)/examples
	install -m644 examples/* $(DOCPATH)/examples/
	install -m644 contrib/* $(DOCPATH)/contrib/

uninstall : 
	rm -f $(INSPATH)$(BIN)
	rm -rf $(DOCPATH)
	rm -f $(MANPATH)/tpp.1*
