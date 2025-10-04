#!/bin/bash

START-TIME=$(date +%s)
sleep 5
END-TIME=$(date +%s)

TOTAL-TIME=$((END-TIME - START-TIME))
echo "Total time taken: $TOTAL-TIME seconds"
# Usage: ./07-variables.sh
# Output:
# Total time taken: 5 seconds   