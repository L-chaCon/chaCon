# chaCon
Start up for a new computer or enviroment
## Tools
**ZSH**
- [oh-my-zsh](https://ohmyz.sh/)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [starship](https://starship.rs/)
- [fzf](https://github.com/junegunn/fzf)
- [fd](https://github.com/sharkdp/fd)
- [bat](https://github.com/sharkdp/bat)
- [fzf-git](https://github.com/junegunn/fzf-git.sh)
- [eza](https://eza.rocks/)

**TMUX**
- [tpm](https://github.com/tmux-plugins/tpm)
- [vim-tmux-navigator](https://github.com/alexghergh/nvim-tmux-navigation)
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
- [tmux-cht-sh](https://github.com/kenos1/tmux-cht-sh)
- [tmux-fuzzback](https://github.com/roosta/tmux-fuzzback)
- [tmux-mem-cpu-load](https://github.com/thewtex/tmux-mem-cpu-load)
- [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)
- [catppuccin](https://github.com/catppuccin/tmux)
- [gitmux](https://github.com/arl/gitmux)

**Neovim**
- [chaCon.nvim](https://github.com/L-chaCon/chaCon.nvim)
#### Clone this reposotory
Clone this repository in the home directory of the user that will be using the computer.
```bash
git clone git@github.com:Chacon-tu-drema/chaCon.git ~/.chaConfing
```
#### Install Ansible
Depending on the OS, the installation of Ansible will be different. [Here are the instructions](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html).
##### Arch extra install
```shell
sudo pacman -S ansible-core
ansible-galaxy collection install community.general
```
## Tools Setup
#### MacOS
Install programs before running the `ansible-playbook` command
##### Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```
##### Insatall iTerm2
```bash
brew install --cask iterm2
```
##### Run the Ansible Playbook
Go to the `.chaConfing` directory and run the `ansible-playbook` command.
```bash
cd ~/.chaConfing
ansible-playbook --ask-become-pass local.yml
```
#### Arch
##### Run the Ansible Playbook
Go to the `.chaConfing` directory and run the `ansible-playbook` command.
```bash
cd ~/.chaConfing
ansible-playbook --ask-become-pass local.yml
```
<!-- TODO: Falta probar para esto -->
## Debian/Ubuntu
TODO
por mierntras:
Python:
```
installar
pip install isort
pip install debugpy
pip install neovim
```
