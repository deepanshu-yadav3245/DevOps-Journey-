(1) Changing Permissions
Using chmod (Change Mode)

# Add execute permission for user
chmod u+x script.sh

# Remove write permission for group
chmod g-w file.txt

# Give read, write, execute to everyone
chmod a+rwx file.txt

# Set exact permissions (numeric mode)
chmod 755 script.sh

🔢 Numeric Mode Reference
4 → Read

2 → Write

1 → Execute


(2) Changing Ownership
Using chown (Change Owner)

# Change owner of a file
sudo chown user file.txt

# Change owner and group
sudo chown user:group file.txt

# Change ownership recursively
sudo chown -R user:group /myfolder


(3) Using chgrp (Change Group)
# Change group only
sudo chgrp developers file.txt
