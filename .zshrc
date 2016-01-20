# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime brew)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/sbin:/Users/eugene/.nvm/v0.10.26/bin:/Users/eugene/bin"

# Preferred editor for local and remote sessions
export EDITOR='emacs'

export VAGRANT_DEFAULT_PROVIDER=aws
[ -s "/usr/local/bin/virtualenvwrapper.sh" ] && . /usr/local/bin/virtualenvwrapper.sh
[ -s "$HOME/.nvm/nvm.sh" ] && . $HOME/.nvm/nvm.sh
export PATH=$(brew --prefix)/sbin:$(brew --prefix)/bin:$PATH:$HOME/bin

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

#
# Load extra functionality
#

if [ -d ~/.dotfiles ] ; then
    export DOTFILES=~/.dotfiles
fi

if [ $DOTFILES ] ; then
  for f in $DOTFILES/shell/* ; do
    . $f
  done
fi
