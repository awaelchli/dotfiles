# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# source bash aliases
source ~/.bash_aliases

# env
export EDITOR=vim

# don't add duplicate lines or lines beginning with a space to the history
HISTCONTROL=ignoreboth

# set history format to include timestamps
HISTTIMEFORMAT="%Y-%m-%d %T "

# set history size
HISTSIZE=1000
HISTFILESIZE=2000

# correct simple errors while using cd
shopt -s cdspell

# append to the history file, don't overwrite it
shopt -s histappend

# add /home/$USER/bin to $PATH
case :$PATH: in
	*:/home/$USER/bin:*) ;;
	*) PATH=/home/$USER/bin:$PATH ;;
esac

# add /home/$USER/.local/bin to $PATH
case :$PATH: in
	*:/home/$USER/.local/bin:*) ;;
	*) PATH=/home/$USER/.local/bin:$PATH ;;
esac

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# init shell for environment modules
if [ -f /etc/profile.d/modules.sh ]; then
	source /etc/profile.d/modules.sh
fi


# INF password store
export INF_PASSWORD_STORE_DIR=~/repositories/inf-pass
alias inf-pass='PASSWORD_STORE_DIR="$INF_PASSWORD_STORE_DIR" pass'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
