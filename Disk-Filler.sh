#!/bin/bash

size_in_mb=$1
temp_file="temp_file.bin"

size_in_bytes=$((size_in_mb * 1024 * 1024))
dd if=/dev/zero of=$temp_file bs=1M count=$size_in_mb status=none
echo "Temporary file '$temp_file' created with size $size_in_mb MB."
