#!/bin/bash

echo "Kokią figūrą norite piešti? (kvadratas / trikampis):"
read form

echo "Įveskite figūros dydį:"
read size

if [ "$form" == "kvadratas" ]; then
    for ((i=1; i<=size; i++)); do
        for ((j=1; j<=size; j++)); do
            echo -n "* "
        done
        echo ""
    done
elif [ "$form" == "trikampis" ]; then
    for((m=1; m<=size; m++)); do
        # This loop print spaces required
        for((a=m; a<=size; a++)); do
            echo -ne " ";
        done
        # This loop print the left side of the pyramid
        for((n=1; n<=m; n++)); do
            echo -ne "*";
        done
        # This loop print right side of the pyramid.
        for((i=1; i<m; i++)); do
        echo -ne "*";
        done
    # New line
    echo;
done
else
    echo "Nežinoma figūra."
fi
