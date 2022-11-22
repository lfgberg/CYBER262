#!/bin/sh

# Vars
LOG=/var/log/testlogs/crypto
DATE=`date +%m%d%y`

# get the line with the highest cpu, output to log
ps aux --sort -pcpu | awk 'NR==2' >> $LOG.$DATE