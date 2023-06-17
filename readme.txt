These scripts are for recording screen touches in live from android with adb

Script to Find the Device (find_device.sh):

Script to Start and Stop Recording Touch Events (record_events.sh):

Script to Replay Touch Screen Events (replay_events.sh):

Make sure to replace "path/to/events.txt" with the actual path where you want to save the recorded touch events.
To run these scripts, make sure you have the adb command-line tool installed on your Ubuntu machine and your Android device connected via USB with USB debugging enabled.
Here's how you can execute each script:

Find the device:
./find_device.sh

Start recording touch events:
./record_events.sh start

Press Enter to stop the recording.

Replay touch screen events:
source find_device.sh  # To retrieve the device
./replay_events.sh
