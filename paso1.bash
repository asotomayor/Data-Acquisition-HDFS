#!/bin/bash

# change to folder input
cd input

# get last file added to the folder
latest_file=$(ls -t | head -n 1)

# check if folder is empty
if [ -z "$latest_file" ]; then 
   
   echo "Empty folder"
   
else
# copy latest added file from local to HDFS
hdfs dfs -put ./${latest_file} ./landing_area

   echo "File transferred"

fi
