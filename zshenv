# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# Go env variables
export GOPATH="$HOME/code/go"
export GOROOT="/usr/local/opt/go/libexec"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$GOROOT/bin"

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init - --no-rehash)"
fi

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
