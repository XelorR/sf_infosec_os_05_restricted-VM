#!/bin/bash

# setup ssh

sudo apt update
sudo apt install -y sshd

if [ ! -f $HOME/.ssh/id_ed25519.pub ]; then
  ssh-keygen -t ed25519 -N ''
fi

sudo cat <<EOF >/etc/ssh/ssh_config
# restriction here
EOF

sudo systemctl restart sshd.service

# create new user
sudo useradd terminaluser

# allow specific utils without root

# configure minimal password length

# install java

# install antivirus
CLAMAV_VERSION=$(curl -s "https://api.github.com/repos/Cisco-Talos/clamav/releases/latest" | grep tag_name | cut -d'"' -f4)
wget "https://github.com/Cisco-Talos/clamav/releases/latest/download/$CLAMAV_VERSION.linux.x86_64.deb"
sudo apt install -y ./$CLAMAV_VERSION.linux.x86_64.deb

# configure autoscan every monday at 4AM

# configure monthly antivirus update

sudo mkdir -p /opt
sudo sh -c 'cat << EOF > /opt/update-clamav.sh
#!/bin/bash

systemctl stop clamav-freshclam
mkdir -p /var/lib/clamav
rm -rf /var/lib/clamav/*
wget http://unlix.ru/clamav/main.cvd -O /var/lib/clamav/main.cvd
wget http://unlix.ru/clamav/daily.cvd -O /var/lib/clamav/daily.cvd
wget http://unlix.ru/clamav/bytecode.cvd -O /var/lib/clamav/bytecode.cvd
systemctl start clamav-freshclam
EOF'
sudo chmod +x /opt/update-clamav.sh

# update antivirus for a first time
sudo /opt/update-clamav.sh
