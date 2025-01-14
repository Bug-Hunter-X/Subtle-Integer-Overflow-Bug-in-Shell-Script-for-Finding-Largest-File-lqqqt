#!/bin/bash

#Corrected script to find the largest file, handling potential integer overflow.

find . -type f -printf '%s %p\n' | awk '{if($1 > max){max=$1; maxfile=$2} } END {print maxfile}' 