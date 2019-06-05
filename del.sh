#!/bin/bash
path=$3 
if [ $2 -eq 0 ]
        then
                exit 0
fi

filepath=$path
path=${path%/*}; 
if [ $2 -eq 1 ]  
    then
	   
	    if [ "${filepath:0:16}" == "/root/Downloads/" ] 
	       then 
	         #echo "$filepath" >>/root/txt.txt
	         rm -rf "$filepath"* /root/Downloads/*.torrent
	         exit 0
               else 
		    #echo "nono" >>/root/txt.txt
		    exit 0
            fi

    else
	    
            if [ "${path:0:16}" == "/root/Downloads/" ] 
	       then
	         #echo "$path" >>/root/txt.txt
                 rm -rf "$path"* /root/Downloads/*.torrent
	         exit 0
               else
		 #echo "nono11" >>/root/txt.txt
		 exit 0
            fi
fi 


