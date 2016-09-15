CC=gcc
LD=$(CC)
CFLAGS=-Wall -DLINUX
LDFLAGS=

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

all: alink

alink.o combine.o util.o output.o objload.o coff.o cofflib.o : alink.h

alink: alink.o combine.o util.o output.o objload.o coff.o cofflib.o stricmp.o strupr.o
	$(LD) $(LDFLAGS) -o $@ $^

clean:
	rm *.o alink
