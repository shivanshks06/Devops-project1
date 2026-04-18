#!/bin/bash

MESSAGE=$1

echo "ALERT: $MESSAGE"

# Option 1: Log to file
echo "$(date): $MESSAGE" >> /mnt/c/Users/shiva/OneDrive/Desktop/Devops/project1/alerts.log

# Option 2: Send email (if configured)
echo "$MESSAGE" | mail -s "DevOps Alert" shvanshks2006@gmail.com