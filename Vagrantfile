Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "focal-dev"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.name = "focal-dev-box"
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
    vb.memory = "4096"
    vb.cpus = "2"
  end

  config.vm.provision "shell", inline: <<-SHELL
    runuser -l vagrant 'setup.sh'
    SHELL
end
