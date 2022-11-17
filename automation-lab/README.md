Tasks

1. At times your team needs to monitor critical files for changes. Your script must meet the following requirements for full credit. (This was the exercise we did in class)

* Allow a variable to be passed into the script each time it is run, this variable will be the complete path of the file being closely monitored. Use "/etc/passwd" as the filename. 
* Apply a SHA 256 hash to that file and store the hash and file name as a line in a log file. 
* Add your ID and the data plus time to the line in the log file so that it reads (This is {Your PSU ID} at {Date+Time here} the Hash was, {add the hash and filename}.
* There should be only one log file for each day with the name "testsums" and the extension of the Month, Date, and Year. For example "testsums.110322
* The location for the log files is /var/log/testlogs and this should be a variable in the script. 

2. Now that you have completed task 1 add another script to test if the hashes in your log file changed. Generate a change to the /etc/passwd file by adding a new user to the server. Run the task 1 script again and the hash should change. You should have a log file with several consistent hashes of /etc/passwd and then your changed hash. 

* The script should read the logfile from task 1 and generate an alert if there is a change in the hash value.
* The alert should echo to the screen an alert message and display the log file entry with the new hash value. Your PSU ID should be part of the alert message. 
* You can create a loop with cat. For example "cat | awk {'print $3'} |while read HASH, note that $3 may not be the correct position of the hash. 
* You will need logic that saves the hash from the previous line in a variable so that you can compare the current to previous hashes per line. 
* Look at the sample scripts that were provided in class and as part of the scripts directory from the GitHub Repo.  

3. The organization has a concern that some form of Crypto Jacking could be running on some of the servers. Write a script that will examine the running processes on the system and do the following;

* Use the "ps aux" command to check the processes, this command will give you the most amount of readable information on the processes. 
* Sort the running processes so that you find the process with the highest CPU usage. 
* Send the line that you found with the highest CPU to a log file. Append your line to the log file and add a Month-Day-Year extension to the name of the log file so that we have a log of highest CPU processes for that day. This is similar to what you did in task 1. 