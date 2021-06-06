#!/bin/bash

numfiles() {
    N="$(find "$1" | wc -l)";
    echo "$N files in $1";
}
