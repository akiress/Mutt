#!/bin/zsh

for f in path/**/*/; do
    if [[ $f == *.rc ]]; then
        getmail --rcfile $f
    fi
done
