[[ $TMUX = "" ]] && export TERM="xterm-256color"

export GOPATH="/home/twitchgg/Develop/golang"
export GOBIN="$GOPATH/bin:/snap/bin"

export JAVA_HOME="/usr/lib/jvm/java-9-jdk"
export MVN_HOME="/usr/local/lib/maven/default"


export DOCKER_HOST="tcp://192.168.168.5:2375"

export PATH="$PATH:$GOBIN:$MVN_HOME/bin"

source ~/.zshalias

