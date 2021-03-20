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
export PATH=$PATH:$GOPATH/bin
export SUDO_ASKPASS='/usr/bin/ssh-askpass'
export SSH_ASKPASS='/usr/bin/ssh-askpass'

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

eval "$(starship init zsh)"

# Load nnn config
[ -f "$HOME/.config/nnn/nnn_config" ] && source "$HOME/.config/nnn/nnn_config"

# Load aliases
[ -f "$HOME/.config/shell/.shell_aliases" ] && source "$HOME/.config/shell/.shell_aliases"

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
