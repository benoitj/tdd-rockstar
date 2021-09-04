#!/bin/bash

while test 1 -eq 1; do
    find . -type f -name "*.rock*" | entr -c -d docker run --rm -v $(pwd):/files benoitj/rocky test -vv -w /files/correct
done
