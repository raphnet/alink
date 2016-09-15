%.o: %.c
        gcc -Zrsx32 -c -o $@ $<

all: alink.exe

alink.o combine.o util.o output.o objload.o coff.o cofflib.o : alink.h

alink.exe: alink.o combine.o util.o output.o objload.o coff.o cofflib.o
        gcc -Zrsx32 -o $@ $^
