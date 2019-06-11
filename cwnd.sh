#!/bin/bash

# This script will check/watch the changes to CWND - Congestion Window between the Local Host and Remote Destination
# We will use SS -ite to Get the specific SS destails for the Destination Host and GREP for CWND
# Tail -1 is to the Number of Lines to Display
# We then sleep for 1 Second, before Performing an SS again
# while[1] - This is ALWAYS TRUE

# while [ 1 ]; do ss -i dst 27.0.3.155 -t -e | grep -A 3 "27.0.3.155:" | grep cwnd | tail -1; sleep 1; echo ; done

echo 'Please enter the Remote IP: '
read varip

while [ 1 ]
do ss -ite dst $varip | grep -A 3 $varip: | grep cwnd | grep cwnd | grep send | grep rtt | tail -1;
  sleep 1;
  echo '!!!!!!';
  echo "";
done

  
  
# Still In Progress
# Check GREPS
# Want to see Changes in CWND AND RTT


cwnd
send
rtt
