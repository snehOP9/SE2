#!/bin/bash

LOG_OUTPUT="./log_monitor_output.log"

function log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_OUTPUT"
}

function send_alert() {
    echo "$1" | mail -s "Log Alert: Critical Issue Detected" "$ALERT_EMAIL"
}
