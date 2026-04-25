#!/bin/bash 

cd /home/user1/Desktop/devops-scripts

echo "Running Tasks..."
echo "Run Started at: $(date)"
echo "======================"

echo "Running System Monitor..."
python3 monitor.py || echo "Monitor Failed"

echo "Updating system..."
bash update.sh || echo "Update Failed"

echo "Pushing to Github..."
python3 gitautomation.py || echo "Git Push Failed"

echo "All Task Completed"

echo "======================"
echo "Run Completed at:$(date)"
echo "======================="
