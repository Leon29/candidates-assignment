#!/bin/bash
#add fix to exercise6-fix here
copy(){
FILESIZE = 0;
if [$@ < 2]
then
      echo 'The minimun is 2 variables'
else
      if[ ifconfig | grep 192.168.100.10 ]
      then
          server="server2"
      else
          server="server1"
      fi
      for i in  {1..$@}
	do
	   scp $# vagrant@$server:${@: -1}
           FILESIZE=$(stat -c%s $#) + FILESIZE
	done
fi
echo $FILESIZE
}
