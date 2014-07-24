# Makefile
# Makefile script for building and (un)installing wikidig software.
#
# Last modified: 24 July 2014.
# By: Stijn Wouters.
.PHONY: all install uninstall develop

EXE		:= wikidig
PWD		:= $(shell pwd)
PREFIX	:= /usr/local/

override SRC	:= bin/wikidig

all:

install: ${SRC}
	cp -u ${PWD}/bin/wikidig ${PREFIX}/bin/${EXE}

uninstall:
	rm -f ${PREFIX}/bin/${EXE}

develop: ${SRC}
	ln -s ${PWD}/bin/wikidig ${PREFIX}/bin/${EXE}
