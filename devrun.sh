#!/usr/bin/env bash
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

grep=""
dry_run="0"

# Parse arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --dry)
            dry_run="1"
            ;;
        --*)
            grep="${1:2}"  # Capture the argument after '--'
            ;;
        *)
            echo "Invalid argument: $1"
            exit 1
            ;;
    esac
    shift
done

log() {
    if [[ $dry_run == "1" ]]; then
        echo "[DRY_RUN]: $1"
    else
        echo "$1"
    fi
}

log "RUN: env: $env -- grep: $grep"

runs_dir=$(find "$script_dir/runs" -mindepth 1 -maxdepth 1 -executable)

# If a grep filter is provided, only run matching scripts
if [[ -n "$grep" ]]; then
    for s in $runs_dir; do
        if [[ "$s" == *"$grep"* ]]; then
            log "running script: $s"
            if [[ $dry_run == "0" ]]; then
                "$s"
            fi
        else
            log "grep \"$grep\" filtered out $s"
        fi
    done
else
    # If no filter is provided, run all scripts
    for s in $runs_dir; do
        log "running script: $s"
        if [[ $dry_run == "0" ]]; then
            "$s"
        fi
    done
fi

