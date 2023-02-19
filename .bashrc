# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

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

# colored prompt, also inside screen etc.
force_color_prompt=yes

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


. "$HOME/.cargo/env"


