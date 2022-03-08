# Ubuntu-focal64 dev environment for Python

Features
- Zsh
- tmux
- neovim
- miniconda

To Add:
- jupyter notebook
- nextflow
- GPU passthrough
- Docker + compose
- vscode server


Setup:
1. Install Virtualbox and Vagrant
2. Create folder `dev` and download `Vagrantfile` and `bootstrap.sh`
        - `wget https://raw.githubusercontent.com/JBwdn/dev_env/master/Vagrantfile -O Vagrantfile`
3. Run `vagrant up` from inside `dev`
4. Connect using `vagrant ssh` inside `dev` 