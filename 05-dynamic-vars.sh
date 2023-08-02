#!/bin/bash

DATE="$(date +%F)"
SESSIONS_COUNT=$(who | wc -l)
echo "Todays date is $DATE "
echo "Total Number Of Active Sessions $SESSIONS_COUNT"