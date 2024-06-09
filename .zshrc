# zsh configurations

export LANG=en_US.UTF-8

# 補完で文字化けしないようにする
setopt print_eight_bit

# 単語区切りの設定
WORDCHARS="*?_-.[]~=&!#$%^(){}<>"


# 補完機能強化
autoload -U compinit
compinit


## setopt
# 色を使う
setopt prompt_subst

# ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify

# =commandを`which command`と同じ処理にする
setopt equals

# ディレクトリ名を入力するだけでカレントディレクトリを変更 
setopt auto_cd

# "cd -[タブ]"で、これまでに移動したディレクトリ一覧が表示され、
# 表示されている番号を押してエンターで、そのディレクトリへ移動できる 
setopt auto_pushd

# 入力したコマンド名が間違っている場合には修正 
setopt correct

# 補完候補を詰めて表示する設定 
setopt list_packed

# 補完候補表示時などにピッピとビープ音をならないように設定   
setopt nolistbeep

# パスの最後に付くスラッシュ(/)を自動的に削除させないため 
setopt noautoremoveslash

# カッコの対応などを自動的に補完
setopt auto_param_keys

# TAB で順に補完候補を切り替える
setopt auto_menu

# 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups

# 同じディレクトリを pushd しない
setopt pushd_ignore_dups

# ^Dでログアウトしないようにする。
setopt ignore_eof

# コマンド履歴ファイルを共有する 
setopt share_history

# コマンド履歴の検索機能はCtrl-PとCtrl-Nに割り当てられ、
# 複数行の編集には↓↑←→を使うといった風にすみわけができる
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end


# Command history configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# コアダンプサイズを制限
limit coredumpsize 102400


## alias
#alias ls="ls -F --color=auto"
alias ls="ls -F"
alias la="ls -AF"
alias ll="ls -lF"
alias lla="ls -lAF"
alias lt="ls --full-time -F"
alias lct="locate"
alias md="mkdir"
alias rd="rmdir"
alias ff="find ./ -name"
alias eman="LANG=en man"
alias cls="clear"
alias dc="docker compose"
# atcoder
alias ojp="oj t -c 'python main.py' -d tests"
alias accsp="acc s main.py -- -l 5055"

# turn off beep
set bell-style none



export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
alias updatedb="sudo /usr/libexec/locate.updatedb"

# Ctrl+Sを停止
stty stop undef


## homebrew
export PATH=/usr/local/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# python
export PYENV_ROOT="${HOME}/.pyenv"
eval "$(pyenv init --path)"
# python起動時に読み込む
export PYTHONSTARTUP=$HOME/.pythonrc.py

# ruby
eval "$(rbenv init -)"

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


# Laravel
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

source /Users/kiyo/.docker/init-zsh.sh || true # Added by Docker Desktop

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kiyo/.pyenv/versions/anaconda3-2022.10/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kiyo/.pyenv/versions/anaconda3-2022.10/etc/profile.d/conda.sh" ]; then
        . "/Users/kiyo/.pyenv/versions/anaconda3-2022.10/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kiyo/.pyenv/versions/anaconda3-2022.10/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export PATH="/Users/kiyo/.detaspace/bin:$PATH"
