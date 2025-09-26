!/bin/bash

 ---------------------------
 Website Setup Script
---------------------------

echo "<dd39> Installing required packages..."
sudo yum install -y wget unzip httpd > /dev/null

echo "<dd39> Starting and enabling Apache (httpd)..."
sudo systemctl start httpd
sudo systemctl enable httpd

echo "<dd39> Creating temporary directory..."
mkdir -p /tmp/webfiles
cd /tmp/webfiles || exit 1

echo "<dd39> Downloading website template..."
wget -q https://www.tooplate.com/zip-templates/2142_cloud_sync.zip

echo "<dd39> Unzipping template..."
unzip -q 2142_cloud_sync.zip

echo "<dd39> Copying website files to /var/www/html..."
sudo cp -r 2142_cloud_sync/* /var/www/html/

echo "<dd39> Restarting Apache service..."
sudo systemctl restart httpd

echo "<dd39> Cleaning up temporary files..."
rm -rf /tmp/webfiles

echo "✅ Setup complete!"
echo "---------------------------"
echo "Service status:"
sudo systemctl status httpd --no-pager
echo "---------------------------"
echo "Files in /var/www/html:"
