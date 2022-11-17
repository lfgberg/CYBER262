#!/bin/sh
# This script will show examples of how variables can be used and logging can be done ny date and time. 
# It will also illustrate the use of hashes to check the integrity of items. 
#
# PARAMS passed into the script  {script.sh} {value}
# - FILENAME is the complete path to the file to be hashed and logged.
#
# SETUP - You must manually add the directory related to the LOG variale bellow.
#
# ==============================================================================
#   VARIABLES
# ==============================================================================
FILENAME=$1
LOG=/var/log/testlogs/sums
#
#
# ===============================================================================
# MAIN
#
# ---------- log the sha256 hash of the shadow file and add a time stamp to the log -----------------------

HASH=`sha256sum $FILENAME`
DATE=`date +%m%d%y`
TIME=`date +%H%M`
MESSAGE="This is lfg5289 at date $DATE:$TIME the hash was, $HASH $FILENAME"
echo $MESSAGE >> $LOG.$DATE
echo "Hash is written to the log file"
echo "Log now contains"
cat  $LOG.$DATE
