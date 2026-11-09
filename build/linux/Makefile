BINNAME=game
SRCDIR = ../../src
INCLUDEDIR = ../../include
BUILDDIR = .
RAYLIBDIR = ../../thirdparty/raylib-6.2_linux_amd64
CC = gcc
LDFLAGS = -lm -lX11

CFLAGS = -Wall -Wextra -I$(INCLUDEDIR) -I$(RAYLIBDIR)/include
SOURCES = main.c
OUTPUT = main.o
HEADERS = $(INCLUDEDIR)/game.h

all: $(BINNAME)

$(BINNAME): $(OUTPUT)
	$(CC) $(OUTPUT) $(RAYLIBDIR)/lib/libraylib.a -L$(RAYLIBDIR)/lib $(LDFLAGS) -o $(BINNAME)

$(OUTPUT): $(BUILDDIR)/%.o: $(SRCDIR)/%.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@ 
	
.PHONY: clean

clean: 
	rm $(BINNAME) *.o