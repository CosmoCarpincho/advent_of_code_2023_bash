#!/bin/bash
sed -E '/[1][3-9] red|[2-9][0-9] red|[1][4-9] green|[2-9][0-9] green|[1][5-9] blue|[2-9][0-9] blue/d' < ./input.txt | cut -d ":" -f 1 | cut -d " " -f 2 | awk '{count = count + $0} END {print count}'
