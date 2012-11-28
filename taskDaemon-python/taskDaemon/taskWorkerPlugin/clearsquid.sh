#!/bin/bash
for i in 1 2 3 4;do
        /usr/bin/squidclient -p 8001 -h 127.0.0.1 -m PURGE http://p$i.gexing.com/$1 | /bin/grep HTTP
done