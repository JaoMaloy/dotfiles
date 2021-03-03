# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/sbin
export PATH=$PATH:/home/jaomaloy/.local/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/bin/
export PATH=$PATH:$ANDROID_HOME/tools/
PATH=$ANDROID_HOME/emulator:$PATH
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
export ANDROID_SDK_ROOT='/opt/android-sdk'
export EDITOR='nvim'
export GOPATH='/home/jaomaloy/Development/go'
export SUDO_ASKPASS='/usr/bin/ssh-askpass'
export SSH_ASKPASS='/usr/bin/ssh-askpass'

# Path to your oh-my-zsh installation.
export ZSH="/home/jaomaloy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="minimal"

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# NNN Configuration
# NNN_BMS=''
export NNN_FIFO='/tmp/nnn.fifo'
export NNN_PLUG='p:preview-tui;d:nmount;i:imgview;c:fzcd;z:fzz;m:mimelist;n:bulknew;f:finder'
export NNN_BMS='m:~/Videos/Movies;t:~/Videos/TV;p:~/development/projects;P:~/Pictures;c:~/.config'

eval "$(starship init zsh)"

# Load aliases
[ -f "$HOME/.config/shell/.shell_aliases" ] && source "$HOME/.config/shell/.shell_aliases"

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# source $HOME/.profile
