#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 domains.txt"
    exit 1
fi

# Assign argument to a variable
DOMAIN_FILE=$1

# Check if the input file exists
if [ ! -f "$DOMAIN_FILE" ]; then
    echo "Error: File $DOMAIN_FILE not found!"
    exit 1
fi

# Read domains from the file
while IFS= read -r DOMAIN; do
    # Skip empty lines
    if [ -z "$DOMAIN" ]; then
        continue
    fi

    # Prepare output file names
    OUTPUT_TXT="${DOMAIN}.txt"
    OUTPUT_XML="${DOMAIN}.xml"

    # Run dnsrecon and save outputs
    dnsrecon -d "$DOMAIN" -x "$OUTPUT_XML" | tee "$OUTPUT_TXT"

    # Print status
    echo "dnsrecon results for $DOMAIN saved to $OUTPUT_TXT and $OUTPUT_XML"

done < "$DOMAIN_FILE"
