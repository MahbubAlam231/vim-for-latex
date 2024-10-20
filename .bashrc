# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Initial{{{
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
#}}}

# Swap caps and escape key{{{
setxkbmap -option caps:swapescape
#}}}
# Default editor{{{
# export EDITOR=vim
#}}}
# Path (+ own scripts){{{
export PATH=$PATH:/root/.local/bin:/home/mahbub/scripts/bin:/home/mahbub/python-code/advent-of-code

# # Texlive path
# export PATH=$PATH:/usr/local/texlive/2021/bin/x86_64-linux

#}}}
# Go Path{{{
export PATH=$PATH:/usr/local/go/bin

export GOPATH=/home/mahbub/golib
export PATH=$PATH:$GOPATH/bin

export GOPATH=$GOPATH:/home/mahbub/go-code

#}}}
# Python Path{{{
export PYTHONPATH=$PYTHONPATH:/home/mahbub/python-code
export PYTHONPATH=$PYTHONPATH:/home/mahbub/python-code/my-modules

#}}}
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.{{{
export PATH="$PATH:$HOME/.rvm/bin"
#}}}
# fzf configurations{{{
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='ag --hidden --ignore ~/.vim/tmp/ --ignore .git -g ""'
# export FZF_DEFAULT_OPTS='-m --cycle --no-mouse --layout=reverse --inline-info --border=rounded --preview="if [ -d {} ]; then echo ""{} is a directory.""; else bat --style=numbers --wrap --color=always {}; fi" --bind="f9:toggle-preview,ctrl-f:preview-page-down,ctrl-b:preview-page-up,ctrl-d:preview-down,ctrl-u:preview-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)"'
# export FZF_DEFAULT_OPTS='-m  --no-mouse --layout=reverse --inline-info --border=rounded --preview="if [ file {} | awk ""{ print $2 }"" -eq "PDF" ]; then less {}; fi" --bind="f9:toggle-preview,ctrl-f:preview-page-down,ctrl-b:preview-page-up,ctrl-d:preview-down,ctrl-u:preview-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)"'
export FZF_DEFAULT_OPTS='-m --no-mouse --layout=reverse --inline-info --border=rounded --preview="bat --style=numbers --wrap --color=always {}" --bind="f9:toggle-preview,ctrl-f:preview-page-down,ctrl-b:preview-page-up,ctrl-d:preview-down,ctrl-u:preview-up,ctrl-y:execute-silent(echo {+} | pbcopy)"'

# Select directory or file and open with xdg-open
od() {
    cd $HOME && find . \( -path ./.config/enchant -o -path ./.cache/dconf -o -path ./.gvfs -o -path ./.vim/tmp \) -prune -o -print | fzf --query=$@ --bind "enter:execute(xdg-open {}),ctrl-o:execute(xdg-open ./{})"
}

# Select directory
sd() {
    cd $HOME && cd "$(du --exclude=./.gvfs --exclude=./.cache --exclude=./.config/enchant | awk '{print $2}' | fzf --query=$@ --preview="tree -L 1 {}" --bind="f9:toggle-preview,enter:execute(xdg-open {})" )"
}

# Select file inside directory
ofd() {
    fzf --query=$@ --bind "enter:execute(xdg-open {})"
}

# Open file pdf dvi md tex
of() {
    cd $HOME && find . \( -path ./git-directory -o -path ./golib -o -path ./vimwiki -o -path ./vimwiki_html \) -prune -o -type f \( -iname \*.pdf -o -iname \*.djvu -o -iname \*.dvi -o -iname \*.tex -o -iname \*.md \) | fzf --query="$@" --bind "enter:execute-silent(xdg-open ./{})" --exit-0
}

sf() {
    cd $HOME && find . \( -path ./git-directory -o -path ./golib -o -path ./vimwiki -o -path ./vimwiki_html \) -prune -o -type f \( -iname \*.pdf -o -iname \*.djvu -o -iname \*.dvi -o -iname \*.tex -o -iname \*.md -o -iname \*.epub -o -iname \*.mobi \) | fzf --query="$@" --bind "enter:execute-silent(xdg-open ./{})" --exit-0
}

# Select pdf
sp() {
    cd $HOME && fzf --query="$@.pdf" --bind "enter:execute(okular {})" --exit-0
}

# Select directory inside directory (subdirectory)
sdd() {
    cd "$(du --exclude=./.gvfs --exclude=./.cache --exclude=./.config/enchant | awk '{print $2}' | fzf --query=$@ --preview="tree -L 1 {}" --bind="f9:toggle-preview,ctrl-o:execute(xdg-open ./{})" )" && tree -L 1 ;
}

# Select file inside directory
sdf() {
    fzf --query=$@ --bind "enter:execute(xdg-open {})"
}

new() {
    cd "$HOME" && fzf --query="$*" --preview='xdg-open {}'
}

lala() {
    cd $HOME && fgrep | head -1 | xargs xdg-open
}

#}}}
## fasd enabling{{{

#set -x
#eval "$(fasd --init auto)"
#set +x

##}}}
# My custom aliases{{{
# Some commands
alias      p='python3'
alias     py='python3'
alias     pr='python3 `fzf`'
alias     pz='python3 `fzf`'
alias     pf='python3 `fzf`'
alias    pip='pip3'

alias    pmr='python ~/python-code/movie_rating.py'
alias    cdp='cd ~/python-code/'

alias     ta='txt ~/python-code/advent-of-code/ input-advent '

alias    vpc='vp coursera'
alias    vpa='vp advent-of-code'
alias    vpf='vp finanal'

alias     re='refdfs'
alias    rey='refdfs y'
alias    rep='refdfs p'
alias    ref='refdfs y'
alias   refd='refdfs y'
alias    red='cd ~/Downloads && refdfs'
alias    reb='refdfs bus'

alias     vv='vimv'

# shell commands
alias      c='clear'
alias      q='exit'
alias     ,q='exit'
alias    ,wq='exit'
alias     dl='trash'
alias    tra='trash'
alias    tre='trash-restore'
alias     tl='trash-list'

alias     ob='vim ~/.bashrc'
alias     sb='source ~/.bashrc'
alias     op='vim ~/.profile'
# alias     sp='source ~/.profile'

alias     sa='sudo apt '
alias     in='sudo apt install'
alias     up='sudo apt update'
alias     ug='sudo apt upgrade'
# alias     re='sudo apt remove'
alias     ar='sudo apt autoremove'
alias  vpnui='/opt/cisco/anyconnect/bin/vpnui'

alias     dt='`date +%F-%H%M`'

alias     sv='savevim'
alias    svy='savevim y'
alias     cv='commitvim'
alias     cw='commitwiki'
alias     cb='commitbin'
alias     ca='commitall'
alias      h='happy'

# Link bibliography
alias  lnbib='ln -s ~/Dropbox/main-bib.bib bib.bib'

# Opening frequent files
alias      v='vim'
alias     v.='vim .'
alias    vmt='vt'
alias     vc='vim ~/.vimrc'
alias     tb='vim ~/.vim/KeyBindings/TeXKeyBindings.vim'
alias     te='vim ~/.vim/KeyBindings/TeXKeyBindings.vim'
alias     ub='vim ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim'
alias     pb='vim ~/.vim/KeyBindings/PythonKeyBindings.vim'
alias     gb='vim ~/.vim/KeyBindings/GoKeyBindings.vim'
alias     ts='vim ~/.vim/UltiSnips/tex.snippets'
alias     ps='vim ~/.vim/UltiSnips/python.snippets'
alias     vz='vim `fzf`'
alias     ss='s'
alias   vmsi='vms i'
alias    svo='vim ~/Dropbox/svenska-for-akademiker/2024-09-15-ord-svenska.md'

# Vimwiki
alias      w='vim ~/vimwiki/index.md'
alias    vwb='vim ~/Dropbox/Data/vimwiki/bridge/bridge.md'
alias   vwba='vim ~/Dropbox/Data/vimwiki/programming/bash-scripting.md'

alias     tg='mkn topological-groups y'
alias     ms='mkn metric-spaces y'

# tmp
alias     rp='vim /home/mahbub/Dropbox/24-application/JOBS-24/research-plan-Mahbub-Alam-ISI-24/research-plan-Mahbub-Alam-ISI-24.tex'
alias    rpg='vim /home/mahbub/Dropbox/24-application/JOBS-24/research-plan-Mahbub-Alam-24/research-plan-Mahbub-Alam-24.tex'

#}}}
