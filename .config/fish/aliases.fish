# system-specific options
switch (uname)
    case Linux
        set LL_OPTIONS "--time-style=long-iso --color=auto"
        set LS_OPTIONS "--time-style=long-iso --color=auto"
        set RM_OPTIONS "-I --preserve-root"
        set CHOWN_OPTIONS "--preserve-root"
        set PS_OPTIONS "-f"

    case Darwin
        set LL_OPTIONS "-G"
        set LS_OPTIONS "-G"
        set RM_OPTIONS "-i"

end

# command aliases
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias back="cd $OLDPWD"
alias cd..="cd .."
alias config="git --git-dir=$HOME/repositories/dotfiles.git --work-tree=$HOME"
alias diff="colordiff"
alias grep="grep --color=auto"
alias ll="ls -lhFa $LL_OPTIONS"
alias ls="ls -lhF $LS_OPTIONS"
alias lsmount="mount |column -t"
alias mkdir="mkdir -pv"

# list largest directories
alias dir5="du -cksh * | sort -hr | head -n 5"
alias dir10="du -cksh * | sort -hr | head -n 10"

# safetynets
# do not delete / or prompt if deleting more than 3 files at a time
alias rm="rm $RM_OPTIONS"

# confirmation
alias mv="mv -i"
alias cp="cp -i"
alias ln="ln -i"

# Parenting changing perms on /
alias chown="chown $CHOWN_OPTIONS"
alias chmod="chmod $CHOWN_OPTIONS"
alias chgrp="chgrp $CHOWN_OPTIONS"

# reload fish config
alias reload='source ~/.config/fish/config.fish'

# run screen in UTF-8 mode
alias screen="screen -U"