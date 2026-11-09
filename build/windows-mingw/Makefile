BINNAME=game.exe
SRCDIR = ../../src
INCLUDEDIR = ../../include
BUILDDIR = .
RAYLIBDIR = ../../thirdparty/raylib-6.2_win64_mingw-w64
CC = x86_64-w64-mingw32-gcc
LDFLAGS = -lopengl32 -lgdi32 -lwinmm

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