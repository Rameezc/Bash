#!/bin/bash

# This Bash Script will Prompt a User for a URL and Number of Requests then Perform the CURLs


# First we will request the User to enter the URL, then the Number of Requests to perform and Lastly the time to Wait/Sleep between requests

echo 'Please enter the URL to be used: '
read varurl

echo 'Thank You, now please enter the number of CURL requests to be performed: '
read varreq

echo 'Thank You, we will perform $varreq CURL requests to $varurl'
echo

echo 'Almost done - Now lets enter a Timeout period in Seconds, incase the Server is not responding: '
read $vartimeout

echo 'Lastly, lets add a Sleep time between CURL requests - Please enter a number of seconds to wait between requests: '
read varsleep 


echo 'Perfect, lets begin!'

# Now that we have gotten the information, lets create the code/script To:
# Perform n (varreq) number of CURLs to the URL varurl 

n=$varreq
for i in `seq 1 $n`;do
  (echo; echo CURL Request Number $i);
  curl -Iv $varurl --connect-timeout $vartimeout;
  (echo; echo End CURL Request Number $i);
  sleep $varsleep;
done



