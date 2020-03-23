#!/bin/sh

# NOTE: Run in debian/ directory!
mkdir -p missing-sources

# keepassxc-browser-1.6.0/keepassxc-browser/browser-polyfill.min.js
# webextension-polyfill v.0.3.1
# (https://github.com/mozilla/webextension-polyfill)
curl 'https://unpkg.com/webextension-polyfill@0.3.1/dist/browser-polyfill.js' \
  > missing-sources/browser-polyfill.js

# NaCl util library
# https://github.com/dchest/tweetnacl-util-js/releases
rm -rf tweetnacl-util-js-0.15.0
curl --location \
  'https://github.com/dchest/tweetnacl-util-js/archive/v0.15.0.tar.gz' \
  > tweetnacl-util-js-0.15.0.tar.gz
tar -xzf tweetnacl-util-js-0.15.0.tar.gz && \
  cp -a tweetnacl-util-js-0.15.0/nacl-util.js missing-sources/
rm -rf tweetnacl-util-js-0.15.0 tweetnacl-util-js-0.15.0.tar.gz
