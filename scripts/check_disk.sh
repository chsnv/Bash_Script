#!/bin/bash
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=80
if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
mail -s 'Disk Space Alert' admin@example.com << EOF
echo "$HOSTNAME / partition free space is critically low. Used: $CURRENT%"
EOF
fi
