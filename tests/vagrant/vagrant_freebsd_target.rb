Vagrant.configure(2) do |config|
  config.vm.provision "shell", inline: <<-SHELL
     pkg install -y py27-ansible-2.6.0
     ln -s /usr/local/bin/python2.7 /usr/bin/python
  SHELL
end
