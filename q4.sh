#!/bin/bash

filename=$1
`touch uniquefile`
`sort "$filename" | uniq > uniquefile`
cat uniquefile
