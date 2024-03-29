#!/bin/sh

# Vars
LOG=/var/log/testlogs/sums
DATE=`date +%m%d%y`
# Initialize the hash var to be the first line of the file
HASH=`cat $LOG.$DATE | awk 'NR==1{print $10}'`

# Loop through the logfile, compare each line
while read p; do
  if [ $HASH != `echo $p | awk '{print $10}'` ]
  then
    # alerts the user
    echo "Detected a change in the hash value"
    # shows the log entry
    echo $p
    # ID for proof
    echo "lfg5289"
  else
    HASH=`echo $p | awk '{print $10}'`
  fi 
# I set this to only check the logs from today's date because nothing else was specified.
# this could be made a parameter ig
done <$LOG.$DATE