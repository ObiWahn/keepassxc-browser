#!/bin/sh

# NOTE: Run in debian/ directory!
mkdir -p missing-sources

# keepassxc-browser-1.6.0/keepassxc-browser/browser-polyfill.min.js
# webextension-polyfill v.0.3.1
# (https://github.com/mozilla/webextension-polyfill)
curl 'https://unpkg.com/webextension-polyfill@0.3.1/dist/browser-polyfill.js' \
  > missing-sources/browser-polyfill.js

# keepassxc-browser-1.6.0/keepassxc-browser/bootstrap/bootstrap.min.js
# /*!
# * Bootstrap v4.4.1 (https://getbootstrap.com/)
# * Copyright 2011-2019 The Bootstrap Authors
#   (https://github.com/twbs/bootstrap/graphs/contributors)
# * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
# */
mkdir -p keepassxc-browser/bootstrap
curl 'https://unpkg.com/bootstrap@4.4.1/dist/js/bootstrap.js' \
  > missing-sources/bootstrap.js
curl 'https://unpkg.com/bootstrap@4.4.1/dist/css/bootstrap.css' \
  > missing-sources/bootstrap.css

# NaCl library
# https://github.com/dchest/tweetnacl-js/releases
curl --location 'https://github.com/dchest/tweetnacl-js/archive/1.0.3.tar.gz' \
  > tweetnacl-js-1.0.3.tar.gz
rm -rf tweetnacl-js-1.0.3
tar -xzf tweetnacl-js-1.0.3.tar.gz && \
  cp -a tweetnacl-js-1.0.3/nacl.js missing-sources/
rm -rf tweetnacl-js-1.0.3 tweetnacl-js-1.0.3.tar.gz

# NaCl util library
# https://github.com/dchest/tweetnacl-util-js/releases
rm -rf tweetnacl-util-js-0.15.0
curl --location \
  'https://github.com/dchest/tweetnacl-util-js/archive/v0.15.0.tar.gz' \
  > tweetnacl-util-js-0.15.0.tar.gz
tar -xzf tweetnacl-util-js-0.15.0.tar.gz && \
  cp -a tweetnacl-util-js-0.15.0/nacl-util.js missing-sources/
rm -rf tweetnacl-util-js-0.15.0 tweetnacl-util-js-0.15.0.tar.gz

# jQuery library
# https://code.jquery.com/jquery-3.4.1.js
curl 'https://code.jquery.com/jquery-3.4.1.js' > missing-sources/jquery-3.4.1.js
