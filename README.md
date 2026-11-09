# raylib-linux-c-template

Template for a Raylib-Application written in C for Linux
Contains Makefiles for both Linux-naitive and Mingw builds.

## Building

```bash
# Checks for the required tools and downloads raylib
source setup.sh

# Build Linux Binary
make -C build/linux

# Run Linux Binary
./build/linux/game

# Build Windows Binary with mingw
make -C build/windows-mingw

# Run Windows Binary with wine
wine ./build/windows-mingw/game.exe
```