# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<PROVISION
echo 'deb http://reproducible.alioth.debian.org/debian/ ./' > /etc/apt/sources.list.d/reproducible.list
cat > /etc/apt/preferences.d/reproducible  <<EOF
Package: *
Pin: origin "reproducible.alioth.debian.org"
Pin-Priority: 999
EOF

sudo apt-get update
sudo apt-get install --yes --force-yes binutils dpkg debhelper

PROVISION

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "deimosfr/debian-jessie"

  config.vm.provision "shell", inline: $script
end
