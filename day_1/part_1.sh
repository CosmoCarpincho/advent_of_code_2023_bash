#!/bin/bash
sed 's/[^0-9]//g; /^$/d' <./input.txt | awk '{ print substr($0,1,1) substr($0,length,1)}' | awk ' {count= $0 + count} END {print count}'
