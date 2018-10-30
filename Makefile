#
# Project: IMS 2018
# File: Makefile
# Created on: 30.10.2018
# Authors: Roman Janik (xjanik20)
# 	       Karel Klečka (xkleck04)
#

CC=g++
CPPFLAGS=-Wextra -pedantic -Wall -O2 -std=c++11 -g
LDFLAGS=-lsimlib -lm

.PHONY: all ims

all: ims

ims:
	$(CC) $(CPPFLAGS) -o ims ims.cpp $(LDFLAGS)
	$(CC) $(CPPFLAGS) -o exp1 experiment1.cpp $(LDFLAGS)
	$(CC) $(CPPFLAGS) -o exp2 experiment2.cpp $(LDFLAGS)

run:
	./ims
	./exp1
	./exp2

pack:
	zip 03_xjanik20_xkleck04.zip *.cpp Makefile *.pdf

clean:
	rm -f ims ./*.out