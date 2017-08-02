#!/usr/bin/env bash

set -e

cp node_modules/testpilot-ga/dist/index.js src/vendor/testpilot-ga.js
cp node_modules/kinto-http/dist/kinto-http.min.js src/vendor/kinto-http.js
cp node_modules/fxa-crypto-relier/dist/FxaCrypto.relier.js src/vendor/FxaCrypto.relier.js
cp node_modules/jose-jwe-jws/dist/jose.min.js src/vendor/jose.js
cp node_modules/quill/dist/quill.min.js src/sidebar/vendor/quill.js
cp node_modules/quill/dist/quill.snow.css src/sidebar/vendor

# Copy the 3rd party LICENSE files.
cp node_modules/kinto-http/LICENSE src/vendor/kinto-http.LICENSE
cp node_modules/quill/LICENSE src/sidebar/vendor/quill.LICENSE
cp node_modules/jose-jwe-jws/LICENSE src/vendor/jose.LICENSE
node scripts/build-locales
