# use bash aliases
source ~/.bash_aliases

# new aliases
alias reload='source ~/.config/fish/config.fish'

# init shell for environment modules
if test -e /etc/profile.d/modules.fish
    source /etc/profile.d/modules.fish
end

# INF password store
set -x INF_PASSWORD_STORE_DIR ~/repositories/inf-pass      
alias inf-pass='PASSWORD_STORE_DIR="$INF_PASSWORD_STORE_DIR" pass'
