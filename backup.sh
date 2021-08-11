echo "Backup Oh-My-Zsh"
mkdir -p ~/backingup/oh-my-zsh/completions
mkdir -p ~/backingup/oh-my-zsh/tools

cp ~/.oh-my-zsh/completions/_dtk.zsh ~/backingup/oh-my-zsh/completions/_dtk.zsh
cp ~/.oh-my-zsh/completions/_hub.zsh ~/backingup/oh-my-zsh/completions/_hub.zsh
cp ~/.oh-my-zsh/tools/kubectl_aliases ~/backingup/oh-my-zsh/tools/kubectl_aliases

