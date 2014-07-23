# Makefile for building/installing wikidig software
#
# Last modified: 24 July 2014.
# By: Stijn Wouters.
.PHONY: all install uninstall develop

CP		= cp -v
RM		= rm -rvf
LN		= ln -vs

EXE		= wikidig
PWD		= $(shell pwd)
PREFIX	= /usr/local/


all: install

install: bin/wikidig
	@${CP} ${PWD}/bin/wikidig ${PREFIX}/bin/${EXE}

uninstall:
	@${RM} ${PREFIX}/bin/${EXE}

develop: bin/wikidig
	@${LN} ${PWD}/bin/wikidig ${PREFIX}/bin/${EXE}
