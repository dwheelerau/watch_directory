# watch_directory  

[Example](screenshots/example.png)

just a simple script for watching a directory and processing
any new files.

Saves the file log to `/var/tmp` which typically will be cleaned up
after 30days if it is not touched within that timeframe.  

# set the WATCHDIR variable for the directory you wish to watch.  
# uncomment and add the path to your base-calling script.  
# add this as a cron job, requires +x and full path in `crontab -e`
