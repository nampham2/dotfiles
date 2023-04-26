#!/bin/sh

OMZ_GIT_DIR="${HOME}/.oh-my-zsh"

# Configure and unconfigure proxy variables as required by apps
function proxy () {
    PROXYADDR="http://webproxy.prod.booking.com:3128"
    OPTION="${1:-missing}"
    if [[ "$OPTION" == "0" ]] || [[ "$OPTION" == "off" ]] || [[ "$OPTION" == "no" ]]; then
        unset http_proxy
        unset https_proxy
        unset HTTP_PROXY
        unset HTTPS_PROXY
        unset no_proxy
        printf "Proxy is off\n"
    elif [[ "$OPTION" == "1" ]] || [[ "$OPTION" == "on" ]] || [[ "$OPTION" == "yes" ]]; then
        export http_proxy="$PROXYADDR"
        export https_proxy="$PROXYADDR"
        export HTTP_PROXY="$PROXYADDR"
        export HTTPS_PROXY="$PROXYADDR"
        export no_proxy="localhost,127.0.0.1,booking.com"
        printf "Proxy configured to $PROXYADDR\n"
    else
	printf "Current proxy settings:\n"
        printf "  http_proxy=$http_proxy\n"
        printf "  https_proxy=$https_proxy\n"
        printf "  HTTP_PROXY=$HTTP_PROXY\n"
        printf "  HTTPS_PROXY=$HTTPS_PROXY\n"
        printf "Please use 0/1, on/off, yes/no to turn on/off the proxy environmental variables.\n"
    fi
}

# Fix oh-my-zsh git repo
function omz_git_fix() {
    pushd ${OMZ_GIT_DIR} >/dev/null
    if [[ ! "$(git rev-parse --is-inside-work-tree)" =~ "true" ]]; then
        git init && git remote add origin https://github.com/ohmyzsh/ohmyzsh.git && git fetch && git reset --hard origin/master
    fi
    popd >/dev/null
}

