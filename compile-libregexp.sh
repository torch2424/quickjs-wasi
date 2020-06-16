#!/bin/bash

# https://github.com/emscripten-core/emscripten/wiki/WebAssembly-Standalone
# https://webassembly.github.io/wabt/demo/wasm2wat/
# https://github.com/emscripten-core/emscripten/issues/4844

# TODO: See the issue, tried all the alternatives. This seems to include everything we need.
# But, Need to link in the stlib stuff, such as string.c
# https://stackoverflow.com/questions/6481291/libc-source-location-for-download-or-online-viewing

emcc libregexp.c libunicode.c cutils.c -g -s WASM=1 -s SIDE_MODULE=1 -o libregexp.wasm 
