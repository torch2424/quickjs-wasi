#!/bin/bash

emcc libregexp.c -g -s WASM=1 -s SIDE_MODULE=1 -o libregexp.wasm 
