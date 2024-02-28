## Variables Enotrno

```
USERNAME = 'chaCon'
```

## Install Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Add Homebrew To Path

```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USERNAME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Insatall iTerm2

```
brew install --cask iterm2
```

## Install git

```
brew install git
```

## Insatall Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install PowerLevel10k

```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

### Edit ~/.zshrc

```
ZSH_THEME="powerlevel10k/powerlevel10k"
source ~/.zshrc
```

### Configurar el Theme

Seleccionar las opciones, estas son las mias

```
p10k configure
yyyy214n1141111n1y
```

para el theme de color yo uso tokyonight-storm

```
curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/tokyonight-storm.itermcolors --output ~/Downloads/tokyonight-storm.itermcolors
```

### Plugins Oh My Zsh

autocompletado

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

highlighting

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Replazar el plugin en ~/.zshrc

```
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

## Nvim

```

```

```
brew install ripgrep fd
```

Para el mac que estoy ocupando, estas son algunas de las cosas que he instalado para la configuracion.
TODO - hacer la misma congifuracion pero para Mac

TMUX

- brew install reattach-to-user-namespace

ZSH

- autoload -U compinit && compinit (dentro de .zshrc)
