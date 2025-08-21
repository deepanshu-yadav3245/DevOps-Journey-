1. Run a command as another user
sudo -u <username> <command>

Example:

sudo -u postgres psql.

2. Edit files with root privileges
sudo nano /etc/hosts

3. Execute the last command with sudo
sudo !!

4. Run a shell with root privileges
sudo -i OR sudo -s


5. Limit sudo to specific commands
deepanshu ALL=(ALL) NOPASSWD: /usr/bin/systemctl restart nginx

6. Log and track sudo usage
sudo journalctl _COMM=sudo

7. Lock and unlock sudo access
sudo -k   # Invalidate timestamp (forces password next time)
sudo -v   # Extend sudo session
