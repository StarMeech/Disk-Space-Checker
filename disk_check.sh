#!/bin/bash

# Disk usage checker
# Warns if root partition usage exceeds a threshold

THRESHOLD=80

usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$usage" -ge 80 ]; then
   echo "WARNING: Disk is $usage% full! (threshold: $THRESHOLD%)"
   exit 1
else
   echo "Disk usage OK: $usage % used (threshold: $THRESHOLD%)"
   exit 0
fi
