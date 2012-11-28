#!/bin/bash
for i in 1 2 3 4;do
        /usr/bin/lwp-request -f -H"HOST:p$i.gexing.com" -H"Referer:http://p$i.gexing.com" -m PURGE http://127.0.0.1:6081/$1 >> /dev/null 2>&1
        if [ $? = 0 ];then
                echo "p$i.gexing.com:200 Purged."
        else
                echo "p$i.gexing.com:404 Not in cache."
        fi
done