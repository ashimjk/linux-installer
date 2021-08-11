

###########################################################################################

ZSH_THEME="spaceship"
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    git
    kubectl
    docker
    docker-compose
    helm
    ng
)

###########################################################################################

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s ~/.sdkman/bin/sdkman-init.sh" ]] && source ~/.sdkman/bin/sdkman-init.sh"

###########################################################################################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###########################################################################################

####### KUBECTL
source ~/.oh-my-zsh/tools/kube-ps1.sh
RPROMPT='$(kube_ps1)'

[ -f ~/.oh-my-zsh/tools/kubectl_aliases ] && source ~/.oh-my-zsh/tools/kubectl_aliases

# namespace and context
alias kn="~/.oh-my-zsh/tools/kubens"
alias kc="~/.oh-my-zsh/tools/kubectx"

alias kgpg="kgp | grep"
alias wkp="watch kubectl get pods"
alias kge="k get pod,deploy,svc,pv,pvc,cm,secret,ing,gateway,virtualservices"

wkps() {
    watch "kubectl get pods | grep $1"
}

dpf() {
    kpf $1 5434:5432
}

kexec() {
    k exec $1 -it -- sh
}

###########################################################################################

####### HELM
alias hl="helm list --tiller-namespace kryptonite"
alias hs="helm status --tiller-namespace kryptonite"
alias hd="helm delete --purge --tiller-namespace kryptonite"
alias whs="watch helm status --tiller-namespace kryptonite"

###########################################################################################

# shortcut
alias cls="clear"

alias gs="git status"
alias gl="git log"
alias gc="git checkout"
alias gb="git checkout -b"
alias gr="git reset"
alias grollback="git reset --soft HEAD~1"


alias jdk8="sdk default java 8.0.302-open"
alias jdk11="sdk default java 11.0.12-open"

alias mci="mvn clean install"
alias mcis="mvn clean install -DskipTests"
alias mcip="mvn clean install -pl"

alias dc="docker-compose"

alias np="npm publish"

alias python="python3"
alias pip="pip3"

alias ks="k6"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias camunda="nohup ~/snap/camunda-modeler/camunda-modeler &"

alias mapgrid="cd ~/code/ui/components && ng build ag-grid --prod && rm -rf ../corporate-ui/node_modules/@corpay/ng-ag-grid && mkdir -p ../corporate-ui/node_modules/@corpay/ng-ag-grid && mv dist/ag-grid/* ../corporate-ui/node_modules/@corpay/ng-ag-grid && cd ~/code/ui/corporate-ui/ && ng serve"


###########################################################################################

function sonar {
	mvn clean install;
	mvn sonar:sonar -Dsonar.host.url=https://sonar.corporate-dev.progressoft.cloud -Dsonar.login=developer -Dsonar.password=hWVeqyHE52sX2D2y;
}

function iclean() {
    find ./ -name '.idea' -exec rm -rf {} \;
    find ./ -name '*.iml' -exec rm -rf {} \;
}

function nclean() {
    find ./ -name 'node_modules' -exec rm -rf {} \;
    find ./ -name 'package-lock.json' -exec rm -rf {} \;
    find ./ -name 'yarn.lock' -exec rm -rf {} \;
}

function dclean() {
	docker stop $(docker ps -aq);
    docker system prune -f;
	docker volume prune -f;
}

function nmodule() {
	rm -rf package-lock.json && rm -rf yarn.lock && rm -rf node_modules/@corpay/$1
}

function mtest() {
	mvn clean test -Dtest=$1
}

function cleanup() {
    nclean
    find ./ -name 'venv' -exec rm -rf {} \;
    find ./ -name 'target' -exec rm -rf {} \;
    find ./ -name 'dist' -exec rm -rf {} \;
    find ./ -name 'artifacts' -exec rm -rf {} \;
}

function oracledb() {
    kpf $1 1521:1521 -n infra-services
}

function ng8() {
    npm uninstall -g angular-cli
    npm cache clean --force
    npm install -g @angular/cli@8.3.29
}

function ng11() {
    npm uninstall -g angular-cli
    npm cache clean --force
    npm install -g @angular/cli@11.2.14
}

function lh() {
    du -hd 1 $1
}

function ksup() {
    k scale --replicas 1 deployment $1
}

function ksdown() {
    k scale --replicas 0 deployment $1
}
