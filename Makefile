# Makefile
# Makefile script for building and (un)installing wikidig software.
#
# Last modified: 25 July 2014.
# By: Stijn Wouters.
.PHONY: all install uninstall develop

EXE		:= wikidig
PWD		:= $(shell pwd)
PREFIX	:= /usr/local/

override WIKIDIG	:= bin/wikidig

all:

install: ${WIKIDIG}
	cp -u ${WIKIDIG} ${PREFIX}/bin/${EXE}

uninstall:
	rm -f ${PREFIX}/bin/${EXE}

develop: ${WIKIDIG}
	ln -s ${PWD}/${WIKIDIG} ${PREFIX}/bin/${EXE}
