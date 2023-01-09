# Color terminal
export TERM=xterm-256color

# Custom paths
export PATH="$PATH:$HOME/.local/bin"

# Enable proxy by default
PROXYADDR="http://webproxy.prod.booking.com:3128"
export http_proxy="$PROXYADDR"
export https_proxy="$PROXYADDR"
export HTTP_PROXY="$PROXYADDR"
export HTTPS_PROXY="$PROXYADDR"
export no_proxy="localhost,127.0.0.1,booking.com"

