#!/bin/bash

# Check if w3m is installed
if ! command -v w3m &> /dev/null
then
    echo "w3m is not installed. Install it using your package manager."
    exit 1
fi

# Check if the user provided a search query
if [ -z "$1" ]; then
    echo "Usage: $0 <search query>"
    exit 1
fi

# Convert the search query into a URL-friendly format
query=$(echo "$@" | sed 's/ /+/g')

# Open Google search in w3m
w3m "https://www.google.com/search?q=$query"