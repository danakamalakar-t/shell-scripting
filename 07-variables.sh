#!/bin/bash

START_TIME=$(date +%s)
sleep 5
END_TIME=$(date +%s)

TOTAL_TIME=$((END_TIME - START_TIME))
echo "Total time taken: $TOTAL_TIME seconds"
# Usage: ./07-variables.sh
# Output:
# Total time taken: 5 seconds   