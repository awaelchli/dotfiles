# Personal Dotfiles Repository


## Creating a bare dotfiles repository

```bash
mkdir $HOME/src
git init --bare $HOME/src/dotfiles.git
``` 
This initializes an empty bare repository. The working directory will be in `$HOME`.
A convenient alias to manage the working tree from any directory:
```bash
alias config='/usr/bin/git --git-dir=$HOME/src/dotfiles.git --work-tree=$HOME'
```
Add the above command to your `.bashrc` for example.
Most files in the home folder should not be tracked. It is easier to work with individual dotfiles by hiding untracked files:
```bash
config config --local status.showUntrackedFiles no
```

## Example Usage

```bash
cd ~
config status
config add .bashrc
config commit -m "update bashrc"
config push
```

## Acknowledgements

Inspired by the article [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles) from Atlassian.
