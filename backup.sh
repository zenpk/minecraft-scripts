#!/bin/bash

kill -9 $(cat pid.txt)
sleep 5s
date_now=$(date +%Y-%m-%d)
mkdir -p "backup/$date_now"
cp -r newworld "backup/$date_now"

./start.sh
