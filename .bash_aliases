# command aliases
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias back='cd $OLDPWD'
alias cd..='cd ..'
alias config="git --git-dir=$HOME/repositories/dotfiles.git --work-tree=$HOME"
alias diff='colordiff'
alias grep='grep --color=auto'
alias ll='ls -lhFa --time-style=long-iso --color=auto'
alias ls='ls -lhF --time-style=long-iso --color=auto'
alias lsmount='mount |column -t'
alias mkdir='mkdir -pv'

# get top process eating memory
alias mem5='ps auxf | sort -nr -k 4 | head -5'
alias mem10='ps auxf | sort -nr -k 4 | head -10'

# get top process eating cpu
alias cpu5='ps auxf | sort -nr -k 3 | head -5'
alias cpu10='ps auxf | sort -nr -k 3 | head -10'

# list largest directories
alias dir5='du -cksh * | sort -hr | head -n 5'
alias dir10='du -cksh * | sort -hr | head -n 10'

# safetynets
# do not delete / or prompt if deleting more than 3 files at a time
alias rm='rm -I --preserve-root'

# confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# Parenting changing perms on /
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# reload bash config
alias reload="source ~/.bashrc"
