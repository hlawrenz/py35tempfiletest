# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "shell", inline: <<-SHELL
    export VERSION=3.5.0
    sudo apt-get update
    sudo apt-get install -y debhelper dpkg-dev quilt autoconf lsb-release sharutils libreadline6-dev libncursesw5-dev zlib1g-dev libbz2-dev liblzma-dev libgdbm-dev libdb-dev tk-dev blt-dev libssl-dev libexpat1-dev libmpdec-dev libbluetooth-dev locales libsqlite3-dev libffi-dev libgpm2 mime-support netbase bzip2 python3:any net-tools xvfb xauth wget
  SHELL
#  config.vm.provision "shell", inline: <<-SHELL
#    sudo add-apt-repository -y ppa:fkrull/deadsnakes
#    sudo apt-get update
#    sudo apt-get install -y python3.5
#  SHELL
end
