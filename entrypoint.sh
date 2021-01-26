#!/bin/sh -l
echo "@codota:registry=https://codota.jfrog.io/artifactory/api/npm/codota-npm/" > .npmrc
if [[ -z "$INPUT_AUTH_TOKEN" ]]; then
    echo "//codota.jfrog.io/artifactory/api/npm/codota-npm/:_authToken=$AUTH_TOKEN" >> .npmrc
else
    echo "//codota.jfrog.io/artifactory/api/npm/codota-npm/:_authToken=$INPUT_AUTH_TOKEN" >> .npmrc
fi