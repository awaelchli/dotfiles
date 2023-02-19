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


set -x LIGHTNING_CLOUD_URL https://lightning.ai
set -x GO_PATH ~/go


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/adrian/google-cloud-sdk/path.fish.inc' ]; . '/Users/adrian/google-cloud-sdk/path.fish.inc'; end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/adrian/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

starship init fish | source
