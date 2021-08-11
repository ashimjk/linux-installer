# Backup

## Oh My Zsh
mkdir -p ~/backingup/oh-my-zsh/completions
mkdir -p ~/backingup/oh-my-zsh/tools

cp ~/.oh-my-zsh/completions/_dtk.zsh ~/backingup/oh-my-zsh/completions/_dtk.zsh
cp ~/.oh-my-zsh/completions/_hub.zsh ~/backingup/oh-my-zsh/completions/_hub.zsh
cp ~/.oh-my-zsh/tools/kubectl_aliases ~/backingup/oh-my-zsh/tools/kubectl_aliases

## Konsole
cp ~/.local/share/konsole/AJK.profile 
cp ~/.local/share/konsole/Edna.colorscheme 

## VLC
cp ~/.local/share/vlc/lua/extensions/vlsub.lua 

## Jetbrains Script
cp ~/.local/share/JetBrains/Toolbox/script 

## Config
cp ~/.gitconfig 
cp ~/.npmrc 
cp ~/.vimrc 
cp ~/.zsh_history 
cp ~/.zshrc 

## SSH
cp ~/.ssh 

## Maven Settings
cp ~/.m2/settings.xml 

## Kubernetes Config
cp ~/.kube 

## Intellij
cp ~/.config/JetBrains/IntelliJIdea2021.2/keymaps/Personal.xml 
cp ~/.config/JetBrains/IntelliJIdea2021.2/codestyles/AJK-Style.xml 
cp ~/.config/JetBrains/IntelliJIdea2021.2/templates/user.xml 