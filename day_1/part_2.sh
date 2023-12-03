#!/bin/bash
sed 's/one/one1one/g; s/two/two2two/g; s/three/three3three/g; s/four/four4four/g; s/five/five5five/g; s/six/six6six/g; s/seven/seven7seven/g; s/eight/eight8eight/g; s/nine/nine9nine/g; s/[^0-9]//g; /^$/d' <input.txt | awk '{ print substr($0,1,1) substr($0,length,1)}' | awk '{count = count + $0} END {print count}'
