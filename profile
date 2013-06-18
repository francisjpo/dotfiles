PS1='\[\033[01;31m\]\u@\h \[\033[01;34m\]\W \$ \[\033[00m\]' # users
PS1='\[\033[01;33m\]\u@\h \[\033[01;34m\]\W \$ \[\033[00m\]' # root
if [ "$PS1" ]; then complete -cf sudo; fi
alias ls='ls -G'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
export ARCHFLAGS="-arch x86_64"
export GIT_EDITOR="subl --wait --new-window"
homebrew=/usr/local/bin:/usr/local/sbin
rubygems=~/.rbenv/versions/2.0.0-p195/bin
export PATH=$homebrew:$rubygems:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source /usr/local/etc/bash_completion.d/git-completion.bash
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
unset LC_ALL
