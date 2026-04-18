#!/bin/bash

LOG_FILE="/var/lib/docker/containers/*/*.log"
ERROR_COUNT=$(grep -i "error" $LOG_FILE | wc -l)

THRESHOLD=5

echo "Error count: $ERROR_COUNT"

if [ "$ERROR_COUNT" -gt "$THRESHOLD" ]; then
    ./alert.sh "High error rate detected: $ERROR_COUNT errors"
fi