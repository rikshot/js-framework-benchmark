#!/usr/bin/env bash

terser "$TRUNK_STAGING_DIR"/js-framework-benchmark-sycamore.js -c -m --module --output "$TRUNK_STAGING_DIR"/js-framework-benchmark-sycamore.js

gzip --best --keep "$TRUNK_STAGING_DIR"/*{.js,.wasm}
brotli --best --keep "$TRUNK_STAGING_DIR"/*{.js,.wasm}

cp "$TRUNK_STAGING_DIR"/index.html "$TRUNK_SOURCE_DIR"/index.html