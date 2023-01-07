# Load my custom setup based on the machine architecture
if [[ `uname` == "Darwin" ]]; then
    source $ZSH_CUSTOM/os/mac-os.zsh
elif [[ `uname` == "Linux" ]]; then
    source $ZSH_CUSTOM/os/linux.zsh
else
    echo "Unknown OS!"
fi

