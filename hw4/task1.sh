#!/bin/bash

# Single line version to kill process infinite.sh if running, else do nothing
pgrep -f infinite.sh | xargs -I {} sh -c 'echo "PID: {} : Killed process infinte.sh"; kill {}'

read -p "Press any key to continue..."

# ------- Kill any process by providing process name -------
# Check if a process name is provided
# if [ -z "$1" ]; then
#     echo "Usage: $0 <process_name>"
#     read -p "Press any key to continue..."
#     exit 1
# fi

# # Find the process ID (PID) using pgrep
# PID=$(pgrep "$1")

# # Check if the process is running
# if [ -z "$PID" ]; then
#     echo "No process found with name: $1"
#     read -p "Press any key to continue..."
#     exit 1
# else
#     # Kill the process
#     kill "$PID"
#     echo "Process $1 (PID: $PID) has been killed."
#     read -p "Press any key to continue..."
# fi

