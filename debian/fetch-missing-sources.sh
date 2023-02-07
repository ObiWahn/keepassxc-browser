#!/bin/sh

# NOTE: Run in debian/ directory!
mkdir -p missing-sources

# NaCl util library
# https://github.com/dchest/tweetnacl-util-js/releases
rm -rf tweetnacl-util-js-0.15.0
curl --location \
  'https://github.com/dchest/tweetnacl-util-js/archive/v0.15.0.tar.gz' \
  > tweetnacl-util-js-0.15.0.tar.gz
tar -xzf tweetnacl-util-js-0.15.0.tar.gz && \
  cp -a tweetnacl-util-js-0.15.0/nacl-util.js missing-sources/
rm -rf tweetnacl-util-js-0.15.0 tweetnacl-util-js-0.15.0.tar.gz

# webextension-polyfill
curl --location \
	'https://unpkg.com/webextension-polyfill@0.10.0/dist/browser-polyfill.js' \
	> missing-sources/browser-polyfill.js
