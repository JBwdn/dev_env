Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "focal-dev"
  config.ssh.port = 22
  config.vm.boot_timeout = 600
  config.ssh.connect_timeout = 60
  
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.name = "focal-dev-box"
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
    vb.memory = "4096"
    vb.cpus = "2"
  end

  # port forwarding for jupyter:
  config.vm.network "forwarded_port", guest:8888, host:8888

  # Provisioning:
  config.vm.provision "shell", inline: "sudo apt-get update"
  config.vm.provision "shell", inline: "sudo apt-get install -y zsh neovim tmux peco"
  config.vm.provision "shell", privileged: false, path:"https://raw.githubusercontent.com/JBwdn/dev_env/master/bootstrap.sh"
  config.vm.provision "shell", inline: "chsh -s /bin/zsh vagrant"

end
