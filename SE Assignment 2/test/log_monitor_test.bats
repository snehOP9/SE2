#!/usr/bin/env bats

@test "Log message appends timestamped line" {
    run bash -c 'source ./scripts/utils.sh; log_message "test log"'
    [ "$status" -eq 0 ]
    grep -q "test log" log_monitor_output.log
}
