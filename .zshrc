# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin/usr/local/mysql/bin:$PATH
export PATH=${PATH}:/usr/local/mysql/bin
export PATH="$HOME/.npm-packages/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)


# postgre config
# export PATH=/Library/PostgreSQL/9.6/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

export PATH=${PATH}:/Applications/Android

export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH=$PATH:/bin:/usr/bin


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Path to your oh-my-zsh installation.
export ZSH="/Users/dgeorgi/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="agnoster"

ZSH_DISABLE_COMPFIX="false"

# looking in ~/.oh-my-zsh/themes/

plugins=(
  git
  bundler
  dotenv
  osx
  rake
  zsh-autosuggestions
  zsh-nvm
  last-working-dir
  web-search
  history
  sudo
  brew
  extract
  yarn
)

source $ZSH/oh-my-zsh.sh

# Reload the plugin to highlight the commands each time Iterm2 starts 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# # Colorise the top Tabs of Iterm2 with the same color as background
# # Just change the 18/26/33 wich are the rgb values
# echo -e "\033]6;1;bg;red;brightness;18\a"
# echo -e "\033]6;1;bg;green;brightness;26\a"
# echo -e "\033]6;1;bg;blue;brightness;33\a"

# clovis-zshrc

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"



### VISUAL CUSTOMISATION ### 

# Add a space in the first prompt 
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"


# Change the git status to red when something isn't committed and pushed
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'

# Add a new line after the global prompt 
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true


# Colorise the top Tabs of Iterm2 with the same color as background
# Just change the 18/26/33 wich are the rgb values 
# echo -e "\033]6;1;bg;red;brightness;18\a"
# echo -e "\033]6;1;bg;green;brightness;26\a"
# echo -e "\033]6;1;bg;blue;brightness;33\a" 


### Git aliases
alias gtree='git log --graph --abbrev-commit --decorate --date=relative --format=format:'\''%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'\'' --all'


alias sz='source ~/.zshrc'     # Easily source your ~/.zshrc file.

eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

source ~/.bash_profile

