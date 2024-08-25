# zsh configurations

typeset -U path PATH
path=(
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /Library/Apple/usr/bin
)


export LANG=en_US.UTF-8

WORDCHARS="*?_-.[]~=&!#$%^(){}<>"

zstyle ":completion:*:commands" rehash 1

autoload -U compinit
compinit


# setopt
setopt print_eight_bit
setopt prompt_subst
setopt hist_verify
setopt equals
setopt auto_cd
setopt auto_pushd
setopt correct
setopt list_packed
setopt nolistbeep
setopt noautoremoveslash
setopt auto_param_keys
setopt auto_menu
setopt hist_ignore_dups
setopt pushd_ignore_dups
setopt ignore_eof
setopt share_history

set bell-style none
stty stop undef


# split zshrc
ZSHHOME="${HOME}/.zsh.d"
if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi