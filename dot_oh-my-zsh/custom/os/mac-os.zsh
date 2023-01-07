export PATH="$HOME/Dropbox/bin:$PATH"
alias vim=nvim
alias vi=nvim
alias ls="ls --color"
export LS_COLORS="$(vivid -m 8-bit generate molokai)"

# jenv init
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# GNU coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


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
