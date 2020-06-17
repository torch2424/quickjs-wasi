#!/bin/bash

# https://github.com/emscripten-core/emscripten/wiki/WebAssembly-Standalone
# https://webassembly.github.io/wabt/demo/wasm2wat/
# https://github.com/emscripten-core/emscripten/issues/4844


# TODO: See the issue, tried all the alternatives. This seems to include everything we need.
# But, Need to link in the stlib stuff, such as string.c
# https://stackoverflow.com/questions/6481291/libc-source-location-for-download-or-online-viewing

# Maybe we can write our own top level API
# Probably what we want to do anyways
# https://developer.mozilla.org/en-US/docs/WebAssembly/existing_C_to_wasm

emcc -s WASM=1 -I libregexp \
  as-libregexp.c libregexp.c cutils.c libunicode.c \
  -o as-libregexp.wasm 
