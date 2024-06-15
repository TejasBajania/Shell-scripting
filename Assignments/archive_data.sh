#!/bin/bash

# List entire directory
# Loop over directory with file

    for files in /home/tejas/Downloads/*.*; do

        file_size_prev=`du -b $files`
        file_size_new=`ls -lh $files`

        echo "\n"
        echo "$files"
        echo "$file_size" 
        echo "$file_size_new"

    done

    # Check if file size is greater than 100 MB 

        # Check timestamp if it is older than 3 days

            # If yes

                # Delete it
        
            # If no

                # Archive
                    # Compress file
                    # Move to archive location