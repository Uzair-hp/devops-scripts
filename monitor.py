import shutil 
import os

total, used , free = shutil.disk_usage("/")

print("====Disk Usage ===")
print(f"Total: {total // (2**30)} GB")
print(f"Used: {used // (2**30)}GB")
print(f"Free: {free // (2**30)}GB")

if free<5 *(2*30):
   print("Low Disk Space!")

print("\n===Memory Usaga===")
os.system("free -h")

print("\n=== System Uptime ===")
os.system("Uptime")

