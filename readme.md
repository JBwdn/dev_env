# General Vagrant ubuntu focal64 dev environment

Features
- Zsh
- tmux
- neovim
- miniconda

To Add:
- Base conda packages
- GPU passthrough
- Docker + compose
- vscode server


Setup:
1. Install Virtualbox and Vagrant
2. Create folder `dev` and download `Vagrantfile`
        - `wget https://raw.githubusercontent.com/JBwdn/dev_env/master/Vagrantfile -O Vagrantfile`
3. Run `vagrant up` from inside `dev`
4. Connect using `vagrant ssh` inside `dev` 