// https://developer.mozilla.org/en-US/docs/WebAssembly/existing_C_to_wasm
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "emscripten.h"
#include "libregexp.h"

EMSCRIPTEN_KEEPALIVE
uint8_t *compile() {
  int len, ret, i;
  uint8_t *bc;
  char error_msg[64];
  const char *input;
  int input_len, capture_count;

  char *regex = "/([A-Z])\w+/g";

  bc = lre_compile(&len, error_msg, sizeof(error_msg), regex,
      strlen(regex), 0, NULL);
  if (!bc) {
    fprintf(stderr, "error: %s\n", error_msg);
    exit(1);
  }

  return bc;
}
