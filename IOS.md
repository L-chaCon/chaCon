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

### Dependencias de Plugins

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
brew install fzf
```

### Edit ~/.zshrc

```
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf)
source ~/.zshrc
```

### Configurar el Theme

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
brew install ripgrep fd
```

### go-delve

```
xcode-select --install
```
