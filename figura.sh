#! /bin/bash

echo "Įveskite figūros dydį:"
read size

for ((i=1; i<=size; i++)); do
    for ((j=1; j<=size; j++)); do
        echo -n "* "
    done
    echo ""
done
