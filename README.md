# chaCon
Start up for a new computer or enviroment
## Install Ansible
Depending on the OS, the installation of Ansible will be different. [Here are the instructions](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html).
### Arch
```shell
sudo pacman -S ansible-core
ansible-galaxy collection install community.general
```
## Clone this reposotory
Clone this repository in the home directory of the user that will be using the computer.
```bash
git clone git@github.com:Chacon-tu-drema/chaCon.git ~/.chaConfing
```
## MacOS
Install programs before running the `ansible-playbook` command
### Insatall iTerm2
```bash
brew install --cask iterm2
```
### Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
#### Add Homebrew To Path
```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```
### Run the Ansible Playbook
Go to the `.chaConfing` directory and run the `ansible-playbook` command.
```bash
cd ~/.chaConfing
ansible-playbook --ask-become-pass local.yml
```
## Arch
### Run the Ansible Playbook
Go to the `.chaConfing` directory and run the `ansible-playbook` command.
```bash
cd ~/.chaConfing
ansible-playbook --ask-become-pass local.yml
```










<!-- TODO: ESTO ESTA DE MAS
The following steps are done by the `local.yml` playbook:

#### Update brew
```bash
brew update
brew upgrade
brew upgrade --cask
brew cleanup
```

#### Core Dependencies
```bash
brew install git
brew install curl
brew install vim
brew install tree
```

#### Create personal folders
```bash
mkdir -p $HOME/work
mkdir -p $HOME/projects
mkdir -p $HOME/personal
```

#### Install ZSH and Dependencies
```bash
brew install zsh
brew install fzf
brew install fd
brew install bat
brew install git-delta
brew install eza
brew install tldr
brew install zoxide
```

#### Install Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
#### Oh My Zsh Dependencies
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### Install stow
```bash
brew install stow
```

#### Coping dotfiles folder
```bash
rsync -rva --ignore-existing --relative ~/.chaConfig/dotfiles/ $HOME/.dotfiles
```

#### Stow dotfiles
```bash
cd $HOME/.dotfiles
rm $HOME/.zshrc
./install
```

The install executable is this:
```bash
#!/usr/bin/env zsh
if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="tmux,bin,zsh,git"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/.dotfiles
fi

cd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder -t $HOME"
    stow -D $folder -t $HOME
    stow $folder -t $HOME
done
```

#### Install Tmux
```bash
brew install tmux
```

#### Install Tmux Plugin Manager
```bash
mkdir $HOME/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

#### Install gitmux
```bash
brew tap arl/arl
brew install gitmux
```

#### Install Nvim
```bash
brew install --HEAD neovim
```

#### Nvim Config
```bash
mkdir -p $HOME/.config
git clone https://github.com/Chacon-tu-drema/chaCon.nvim $HOME/.config/nvim
```

#### Nvim Dependencies
```bash
brew install ripgrep fd
xcode-select --install
```
-->

## Debian/Ubuntu

por mierntras:

Python:

```
installar
pip install isort
pip install debugpy
pip install neovim
```

