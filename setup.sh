#!/bin/bash

# DISCLAIMER execute this in
while true; do
    read -p "Are you currently using iTerm2 (y(es)/n(o)?" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * );;
    esac
done
