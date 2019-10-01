#!/bin/bash
set -eu
if [[ -d packages ]]; then
    cd packages
    dpkg-scanpackages . /dev/null |gzip > Packages.gz
    cd ..
else
    echo "no packages file found"
fi

