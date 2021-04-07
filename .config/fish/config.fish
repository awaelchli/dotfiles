# disable greeting message
set fish_greeting 

# use bash aliases
source ~/.config/fish/aliases.fish

# cheat.sh alias
function cheat
    curl cheat.sh/$argv
end

# init shell for environment modules
if test -e /etc/profile.d/modules.fish
    source /etc/profile.d/modules.fish
end

# INF password store
set -x INF_PASSWORD_STORE_DIR ~/repositories/inf-pass      
alias inf-pass='PASSWORD_STORE_DIR="$INF_PASSWORD_STORE_DIR" pass'

if test -d /usr/local/anaconda3/
    eval /usr/local/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else if test -d $HOME/anaconda3 
    eval $HOME/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
