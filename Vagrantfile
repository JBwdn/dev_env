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

  config.ssh.username = "jb"
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y zsh neovim tmux peco

    # Zsh manager:
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

    # Miniconda setup:
    mkdir -p ~/miniconda3
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
    rm -rf ~/miniconda3/miniconda.sh
    ~/miniconda3/bin/conda init bash
    ~/miniconda3/bin/conda init zsh
    SHELL
end
