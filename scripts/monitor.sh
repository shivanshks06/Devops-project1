#!/bin/bash

CPU_THRESHOLD=80
MEM_THRESHOLD=80

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
MEM_USAGE=$(free | grep Mem | awk '{print ($3/$2) * 100.0}')

echo "CPU Usage: $CPU_USAGE%"
echo "Memory Usage: $MEM_USAGE%"

if (( $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc -l) )); then
    ./alert.sh "High CPU usage: $CPU_USAGE%"
fi

if (( $(echo "$MEM_USAGE > $MEM_THRESHOLD" | bc -l) )); then
    ./alert.sh "High Memory usage: $MEM_USAGE%"
fi