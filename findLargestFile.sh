#!/bin/bash

# This script attempts to find the largest file in a directory.
# It has a subtle bug related to how it handles file sizes.

find . -type f -printf '%s %p\n' | sort -nr | head -n 1