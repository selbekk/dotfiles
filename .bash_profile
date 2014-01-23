# Jarle magi
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Aliases
alias ls="ls -la"
alias ll="ls -plasrt"
alias time="date"
alias cs="cowsay"
alias server="python -m SimpleHTTPServer"

alias rbash="source ~/.bash_profile"
alias be="bundle exec"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias mc="mvn clean"
alias mci="n mvn clean install"
alias mcit="n mvn clean install -DskipTests -Dmvn.test.skip=true"
alias mciu="n mvn clean install -U"
alias mwd="n mvn weblogic:deploy"
alias mdt="mvn dependency:tree"

alias bekk="cd /bekk"
alias bring="cd /bekk/bring"

alias gs="git status"
alias ga="git add ."
alias gm="git commit -m"

alias raket="be rake -T"

# Scripts
alias nvm=". ~/.nvm/nvm.sh"
alias proxy="source ~/proxy.sh"
alias noproxy="source ~/no_proxy.sh"

# Ruby
if which rbenv > /dev/null; 
	then eval "$(rbenv init -)"; 
fi

# Notification center
n () { 
	"$@" ; 
	/Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier -message "$( echo $@ ) returned $?" -title "Command $HISTCMD Completed" >/dev/null ; 
}

# Git stuff
source ~/.git-completion.sh

if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; 
	then . /usr/local/git/contrib/completion/git-completion.bash 
fi

GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; 
	then . /opt/local/etc/bash_completion 
fi 

PS1='[\033[32m]\u@\h[\033[00m]:[\033[34m]\w[\033[31m]$(__git_ps1)[\033[00m]\$ '

export PS1="\h:\W \u\[\e[1;36m\] \$(parse_git_branch)\[\e[0m\] $ " 

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# /END Git stuff

# Exports
export PATH=~/.scripts:/usr/local/mysql/bin:~/bin:$PATH
export MAVEN_OPTS=-Xmx1024m

# Salut!
echo "Are you ready for this?"
