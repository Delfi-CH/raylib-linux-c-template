#!/usr/bin/env bash

echo "Checking for tools..."
tools=("gcc" "make" "x86_64-w64-mingw32-gcc" "wget" "unzip")

for tool in "${tools[@]}"; do
    which "$tool" &>/dev/null || { echo "Could not find $tool! Aborting..."; exit 1; }
    echo "$tool found at $(which $tool)"
done

echo "Downloading libraries..."

rm -rf thirdparty &>/dev/null

mkdir thirdparty &>/dev/null
pushd thirdparty &>/dev/null

wget https://github.com/raysan5/raylib/releases/download/6.2/raylib-6.2_linux_amd64.tar.gz &>/dev/null
tar -xzf raylib-6.2_linux_amd64.tar.gz &>/dev/null
rm raylib-6.2_linux_amd64.tar.gz &>/dev/null
echo "Got raylib-6.2_linux_amd64!"

wget https://github.com/raysan5/raylib/releases/download/6.2/raylib-6.2_win64_mingw-w64.zip &>/dev/null
unzip raylib-6.2_win64_mingw-w64.zip &>/dev/null
rm raylib-6.2_win64_mingw-w64.zip &>/dev/null
echo "Got raylib-6.2_win64_mingw-w64!"

popd &>/dev/null

echo "Done!"
echo "To build for Linux, run 'make -C build/linux'."
echo "To build for Windows, run 'make -C build/windows-mingw'."