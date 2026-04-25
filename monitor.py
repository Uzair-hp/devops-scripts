import shutil 

total, used , free = shutil.disk_usage("/")
print(f"Used: {used // (2**30)}GB")
print(f"Free: {free // (2**30)}GB")

if free<5 *(2*30):
   print("Low Disk Space!")

