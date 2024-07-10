#!/bin/bash

list_directories(){


    for home in */; do	
	
		num_files=$(find "$home" -maxdepth 1 -type f | wc -l)

		if [ "$num_files" -gt 5 ]; then

			echo "Directory:$home"
			echo "Files:"

			ls -1 "$home"
			 echo
		fi
		 done
	 }
	 list_directories


