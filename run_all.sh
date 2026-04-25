#!/bin/bash

cd /home/user1/Desktop/dev_script || exit

LOG_FILE="/home/user1/Desktop/dev_script/log.txt"

echo "======================" >> "$LOG_FILE"
echo "Run Started at: $(date)" >> "$LOG_FILE"
echo "======================" >> "$LOG_FILE"

echo "Running System Monitor..." >> "$LOG_FILE"
python3 monitor.py >> "$LOG_FILE" 2>&1 || echo "Monitor Failed" >> "$LOG_FILE"

echo "Updating system..." >> "$LOG_FILE"
bash update.sh >> "$LOG_FILE" 2>&1 || echo "Update Failed" >> "$LOG_FILE"

echo "Pushing to GitHub..." >> "$LOG_FILE"
python3 gitautomation.py >> "$LOG_FILE" 2>&1 || echo "Git Push Failed" >> "$LOG_FILE"

echo "All Tasks Completed" >> "$LOG_FILE"

echo "Run Completed at: $(date)" >> "$LOG_FILE"
echo "======================" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"


