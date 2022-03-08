# Zsh manager install:
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" --unattended
cd ~/ 

# Fetch remote config files:
wget https://raw.githubusercontent.com/JBwdn/dev_env/master/zshrc -O ~/.zshrc
mkdir -p ~/.config/nvim
wget https://raw.githubusercontent.com/JBwdn/dev_env/master/init.vim -O ~/.config/nvim/init.vim

# Miniconda setup:
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

# Base conda env:
wget https://raw.githubusercontent.com/JBwdn/dev_env/master/base.yml -O ~/base.yml
~/miniconda3/bin/conda env update -n base --file ~/base.yml
rm -rf ~/base.yml