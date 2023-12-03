#!/bin/bash
input="./input.txt"

sum=0

while IFS= read -r linea || [ -n "$linea" ]; do
	n_red=$(grep -oE '[0-9]+ red' <<<$linea | sort -n -r | head -n 1 | cut -d" " -f 1)
	n_green=$(grep -oE '[0-9]+ green' <<<$linea | sort -n -r | head -n 1 | cut -d" " -f 1)
	n_blue=$(grep -oE '[0-9]+ blue' <<<$linea | sort -n -r | head -n 1 | cut -d" " -f 1)

	echo "n_red = $n_red"
	echo "n_green = $n_green"
	echo "n_blue = $n_blue"
	((sum += n_red * n_green * n_blue))

done <$input

echo $sum
