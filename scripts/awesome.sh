#!/bin/bash
if [ "$1" = "me" ]; then
    echo "I'm awesome."
elif [ "$1" = "them" ]; then
    echo "Okay, They're awesome."
else
    echo "Usage ./awesome.sh me|them"
fi