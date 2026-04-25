#!/bin/bash 

cd /home/user1/Desktop/dev_script

LOG_File="/home/user1/Desktop/dev_script/log.txt"

echo "Running Tasks..." >> "$LOG_File"
echo "Run Started at: $(date)" >> "$LOG_File"
echo "======================" >> "$LOG_File"

echo "Running System Monitor..."
python3 monitor.py || echo "Monitor Failed" >> "$LOG_File" 

echo "Updating system..."
bash update.sh || echo "Update Failed" >> "$LOG_File"

echo "Pushing to Github..."
python3 gitautomation.py || echo "Git Push Failed" >> "$LOG_File"

echo "All Task Completed"

echo "======================" >> "$LOG_File"
echo "Run Completed at:$(date)">>  "$LOG_File"
echo "======================="
