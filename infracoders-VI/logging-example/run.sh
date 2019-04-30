#!/usr/bin/env bash

mkdir -p /data/infracoders/logs

i=0

while true; do
    i=$((i+1))

    LOG_DATE=`date "+%Y-%m-%dT%H:%M:%S"`
    FILE_DATE=`date +%Y%m%d%H`

    echo "${LOG_DATE};Welcome to InfraCoders!;Log loop ${i}" >> /data/infracoders/logs/infracoders_log_${FILE_DATE}.log
    sleep 5
done
