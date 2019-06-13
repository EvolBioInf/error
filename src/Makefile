CC=gcc
export VERSION = $(shell bash ../scripts/version.sh) # The single, trailing blank is essential
export DATE    = $(shell bash ../scripts/date.sh) #    The single, trailing blank is essential
CFLAGS         = -DVERSION=\"$(VERSION)\" -DDATE=\"$(DATE)\" -O3 -Wall -Wshadow -pedantic -std=gnu99 -g -I../common/ -L../common/ #-pg

SRCFILES  = testError.c error.c 
OBJFILES  = testError.o error.o 
LIBS      = -lm -lbsd
EXECFILE  = testError

.PHONY : all
all : $(EXECFILE)
$(EXECFILE) : $(OBJFILES)
	$(CC) $(CFLAGS) -o $(EXECFILE) $(OBJFILES) $(LIBS)
interface.o: interface.h
error.c: error.org error.h
	bash ../scripts/org2nw error.org | notangle -Rerror.c > error.c
error.h: error.org
	bash ../scripts/org2nw error.org | notangle -Rerror.h > error.h
testError.c: error.org error.h
	bash ../scripts/org2nw error.org | notangle -RtestError.c > testError.c

clean:
	rm -f *.o *~
test:
	bash ../scripts/error.sh 
