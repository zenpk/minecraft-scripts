#!/bin/bash

if [ "$1" = "fg" ]; then
    exec java -Xms1G -Xmx4G -jar server.jar --nogui
else
    nohup java -Xms1G -Xmx4G -jar server.jar --nogui > .log 2>&1 &
    echo $! > pid.txt
fi