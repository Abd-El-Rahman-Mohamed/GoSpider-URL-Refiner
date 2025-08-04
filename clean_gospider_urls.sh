#!/bin/bash
sed -i '' \
    -e 's/^\[url\] - \[code-200\] - //' \
    -e 's/^\[subdomains\] - //' \
    -e 's/^\[robots\] - //' \
    -e 's/^\[href\] - //' \
    -e 's/^\[javascript\] - //' \
    -e 's/^\[form\] - //' \
    -e 's/\[linkfinder\].-.\[from: //g' \
    -e 's/\[linkfinder\].- //g' \
    -e 's/\].*$//g' \
    example_com

awk '!/^http/' example_com
