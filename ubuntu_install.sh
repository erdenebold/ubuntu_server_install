sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install git
sudo adduser --system --home=/opt/odoo --group odoo
sudo apt-get install -y python3-pip
sudo apt-get install python-dev python3-dev libxml2-dev libxslt1-dev zlib1g-dev libsasl2-dev libldap2-dev build-essential libssl-dev libffi-dev libmysqlclient-dev libjpeg-dev libpq-dev libjpeg8-dev liblcms2-dev libblas-dev libatlas-base-dev
sudo apt-get install -y npm
sudo -H pip3 install num2words ofxparse dbfread ebaysdk firebase_admin pyOpenSSL
sudo npm install -g less
sudo npm install -g less-plugin-clean-css
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install -g less less-plugin-clean-css
sudo apt-get install -y node-less
sudo wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb
sudo dpkg -i wkhtmltox_0.12.5-1.bionic_amd64.deb
sudo apt-get install –f
sudo dpkg -i wkhtmltox_0.12.5-1.bionic_amd64.deb
sudo cp /usr/local/bin/wkhtmltopdf /usr/bin
sudo cp /usr/local/bin/wkhtmltoimage /usr/bin
sudo apt -y install vim bash-completion wget
sudo wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" |sudo tee  /etc/apt/sources.list.d/pgdg.list
sudo apt-get update
sudo apt-get install postgresql-13 postgresql-client-13
sudo su - postgres -c "createuser -s odoo" 2> /dev/null || true
sudo wget https://nightly.odoo.com/13.0/nightly/src/odoo_13.0.latest.zip
sudo apt-get install zip
sudo unzip odoo_13.0.latest.zip
sudo mv odoo_* /opt/odoo/odoo
sudo mkdir /var/log/odoo
sudo chown odoo:root /var/log/odoo

sudo touch /etc/odoo.conf
sudo su root -c "printf '[options] \n; This is the password that allows database operations:\n' >> /etc/odoo.conf"
sudo su root -c "printf 'admin_passwd = False \n' >> /etc/odoo.conf"
sudo su root -c "printf 'addons_path=/opt/odoo/odoo/addons \n' >> /etc/odoo.conf"
sudo su root -c "printf 'http_port = 8069 \n' >> /etc/odoo.conf"
sudo su root -c "printf 'logfile = /var/log/odoo/odoo-server.log\n' >> /etc/odoo.conf"
sudo chown odoo:odoo /etc/odoo.conf
sudo chmod 640 /etc/odoo.conf

sudo touch /etc/init.d/odoo-server

sudo chmod 755 /etc/init.d/odoo-server
sudo chown root: /etc/init.d/odoo-server

sudo update-rc.d odoo-server defaults

sudo /etc/ini.d/odoo-server start