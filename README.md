# .osxdotfiles
mac configuration

1. There could be weird behaviour if .cfg tries to track itself. Avoid recursive issues by adding .cfg to your global Git ignore.

echo ".osxdotfiles"  >> .gitignore

2. Clone the repo

git clone https://github.com/jpiedrafita/.osxdotfiles.git > $HOME/.osxdotfiles --bare

3. Set up an alias to send Git commands to .osxdotfiles, and also set $HOME as the work tree, while storing the Git state at .osxdotfiles. For a bare repo, the path to the Git directory is at the top level of the project: $HOME/.dotfiles/

alias config='/usr/bin/git --git-dir=$HOME/.osxdotfiles --work-tree=$HOME'

4. Set a local configuration in .osxdotfiles to ignore untracked files.

config config --local status.showUntrackedFiles no

Files on the computer might have identical locations and names to files in the .cfg repo. Git doesn’t want to overwrite your local files. Back up the files if they’re useful, delete them if they aren’t. Run config checkout again until you don’t get any errors.
5. Checkout the actual content from your .osxdotfiles repository to $HOME. Git pulls the tracked files out of the compressed database in the Git directory and places them in the work tree.

config checkout
