#!/bin/bash
#
# note /var/tmp is cleaned after 30d on most systems unless
# it is accessed (clock is reset).  
# You can check the specific time setting using
# `grep -R "/var/tmp" /usr/lib/tmpfiles.d/`
# returns something like this
## /usr/lib/tmpfiles.d/tmp.conf:#q /var/tmp 1777 root root 30d

WATCHDIR="data"
SEEN="/var/tmp/seen_files.txt"

touch "$SEEN"

for FILE in "$WATCHDIR"/*;do
	if ! grep -Fxq "$FILE" "$SEEN"; then
		echo "Processing $FILE ..."
		#/path/to/calling/script.sh "$FILE"
		echo "$FILE" >> "$SEEN"
	fi
done
