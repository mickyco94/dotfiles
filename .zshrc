export ZDIR=$HOME/.config/zsh/

for conf in "$ZDIR"*.zsh; do
    source "${conf}"
done
unset conf