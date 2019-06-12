#!/usr/bin/env bash

mkdir -p /data/infracoders/logs

i=0

while true; do
    i=$((i+1))

    LOG_DATE=`date "+%Y-%m-%dT%H:%M:%S"`
    FILE_DATE=`date +%Y%m%d%H`

    echo "${LOG_DATE};Welcome to InfraCoders!;${i}" >> /data/infracoders/logs/infracoders_log_fluentd_${FILE_DATE}.log
    echo "{\"timestamp\": \"${LOG_DATE}\", \"message\": \"Welcome to InfraCoders\", \"number\": ${i}}" >> /data/infracoders/logs/infracoders_log_fluentbit_${FILE_DATE}.log
    sleep 5
done
