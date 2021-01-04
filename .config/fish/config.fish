# use bash aliases
source ~/.bash_aliases

# new aliases
alias reload='source ~/.config/fish/config.fish'

# init shell for environment modules
if test -e /etc/profile.d/modules.fish
    source /etc/profile.d/modules.fish
end
