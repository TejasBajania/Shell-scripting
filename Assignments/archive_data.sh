#!/bin/bash

for files in /home/tejas/test/*.*; do

    file_size_prev=`du -b $files`
    file_size_new=`du -b $files | cut -f1` # 100 MB = 104857600 Bytes

    if [ $file_size_new -gt 104857600 ]; then

        echo $files is greater than 100 MB

        # collect both times in seconds-since-the-epoch
        three_days_ago=$(date -d 'now - 3 days' +%s)
        

        file_time=$(date -r "$files" +%s)
        
        if (( $file_time < $three_days_ago));then
            
            echo $files was modified less than 3 days ago  with $file_time please compress and archive it
            time_folder_name=$(date +%Y%m%d)
            mkdir -p /home/tejas/test/archive/"$foldername"
            mv $files  /home/tejas/test/archive/"$foldername"

            echo "Files archived"

        else
            mkdir -p /home/tejas/test/delete/"$foldername"
            mv $files  /home/tejas/test/delete/"$foldername"
            echo $files was modified more than 3 days ago  with $file_time please delete it
            echo "Files deleted"
        fi
    fi
    
done
