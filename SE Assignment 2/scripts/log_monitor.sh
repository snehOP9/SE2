#!/bin/bash

source ./scripts/utils.sh

LOG_FILE="/var/log/syslog"
KEYWORDS=("error" "fail" "panic")
ALERT_EMAIL="your@email.com"

function monitor_logs() {
    echo "Monitoring $LOG_FILE..."
    while IFS= read -r line; do
        for keyword in "${KEYWORDS[@]}"; do
            if echo "$line" | grep -i "$keyword" &>/dev/null; then
                log_message "Critical: $line"
                send_alert "$line"
            fi
        done
    done < "$LOG_FILE"
}

monitor_logs
