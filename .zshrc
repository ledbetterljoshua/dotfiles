# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=$HOME/dotfiles/.oh-my-zsh # Path to your oh-my-zsh configuration.

ZSH_THEME="brad-muse"
DEFAULT_USER="ledbetterljoshua+zshrc@gmail.com"
COMPLETION_WAITING_DOTS="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

unsetopt nomatch
setopt APPEND_HISTORY
setopt INTERACTIVE_COMMENTS

plugins=(
  git
  github
  git-extras
  vscode 
  yarn 
  npm 
  npx 
  nvm 
  brew 
  brew-cask
  zsh-syntax-highlighting
  z
)

source $ZSH/oh-my-zsh.sh
for file in $HOME/dotfiles/sourced/*; do
   source "$file"
source $ZSH/oh-my-zsh.sh
done

if (( $+commands[tag] )); then
	tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
	alias ag=tag
fi
