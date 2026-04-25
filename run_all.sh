#!/bin/bash 

echo "Running System Monitor..."
python3 monitor.py

echo "Updating system..."
bash update.sh

echo"Pushing to Github..."
python3 gitautomation.py

echo"All Task Completed"

