#!/bin/bash

# Start recording touch events
start_recording() {
    events_file="path/to/events.txt"  # Replace with the path to the file to save recorded events

    adb -s "$device" shell getevent -lt > "$events_file" &
    pid=$!
    echo "Recording started. Press Enter to stop recording."
    read -r
    kill "$pid" 2>/dev/null
    echo "Recording stopped. Events saved to: $events_file"
}

# Check the command-line argument
if [ "$1" = "start" ]; then
    source find_device.sh
    start_recording
else
    echo "Invalid command. Usage: $0 start"
    exit 1
fi
