export PATH="$HOME/Dropbox/bin:$PATH"
# alias vim=nvim
# alias vi=nvim
alias ls="ls --color"
export LS_COLORS="$(vivid -m 8-bit generate molokai)"

# jenv init
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# GNU coreutils
export PATH="/opt/homebrew/anaconda3/bin/:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/google-cloud-sdk/completion.zsh.inc'; fi

sudo() {
  if [[ $(/usr/sbin/dseditgroup -q -o checkmember -m "$(/usr/bin/stat -f%Su /dev/console)" admin) =~ ^no.+$ ]]; then
    /Applications/Privileges.app/Contents/Resources/PrivilegesCLI --add &&
    /usr/bin/sudo "${@}"
  else
    /usr/bin/sudo "${@}"
  fi
}

# M1 specifics
# brew install hdf5 c-blosc
export HDF5_DIR=/opt/homebrew/opt/hdf5 
export BLOSC_DIR=/opt/homebrew/opt/c-blosc

