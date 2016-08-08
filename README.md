# dotfiles
These are the dotfiles which I am usually setting on my working environment.
* .gitconfig
* .zshrc
* .vimrc

# Homebrew
## Install xcode
* Install xcode from Appstore
* Install Command Line Tools
```
xcode-select --install
```

## Install Homebrew
Use the command below
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew -v
```

# Get Ruby done
## Install rbenv for ruby environment management.
```
brew install ruby-build
brew install rbenv
```

## Install ruby by rbenv
```
rbenv install ${version_I_want_use}
```

# Install applications and configure them by script
```
curl -sSL https://github.com/Kaminari-Y/dotfiles/tree/master/mac/setup.sh | bash
```

# Install oh-my-zsh
```
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```

# Get dotfiles via homesick
