# Manual Installation

## HubStaff
[Download from here](https://app.hubstaff.com/download)

## Jetbrains ToolBox
[Download from here](https://www.jetbrains.com/toolbox-app/)

## Install JDK
```shell
sdk install java 8.0.292.j9-adpt
sdk install java 11.0.11.j9-adpt
```

## Install Maven
```shell
sdk install maven
```

## SpaceShip Theme
```shell
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

Now, set ZSH_THEME="spaceship" in your .zshrc

## Install Firacode Fonts
```shell
sudo apt install fonts-firacode
```

## Install Powerfonts
```shell
sudo apt-get install fonts-powerline
```

## Installl Zsh-Autosuggestions
```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Add `zsh-autosuggestions` in plugins

## Install Zsh-Syntax-Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

Add `zsh-syntax-highlighting` in plugins

## Install NVM
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

Add following lines in .zshrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Install Node
```shell
nvm install node
```

## Install AngularCli
```shell
npm install -g @angular/cli@11.2.14
```


## Install Kube-ps1
add it inside tools directory
https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh

give executable permission
chmox +x kube-ps1.sh

## Install Kubectx

download
add it inside tools directory
wget https://raw.githubusercontent.com/ahmetb/kubectx/master/kubectx
wget https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens

give executable permission
chmox +x kubectx
chmox +x kubens

add it inside completions with _ (underscore) as prefix
https://raw.githubusercontent.com/ahmetb/kubectx/master/completion/kubectx.zsh
https://raw.githubusercontent.com/ahmetb/kubectx/master/completion/kubens.zsh


## Install Camunda Modeler
https://camunda.com/download/modeler/


## Install Microsoft Teams
https://www.microsoft.com/en-ww/microsoft-teams/download-app#desktopAppDownloadregion


## Disable touchpad
Goto Mouse and Touchpad > Disable touchpad when mouse is attached

## Intellij Coverage Runner
Goto Run/Debug Configurations > Edit configurations > JUnit > Modify Coverage Runner

## Hubstaff
Enable screenshot notification

## Intellij Memory Increase
Goto Help > Change memory settings > 4096

## Webstorm File Watcher
Open `/etc/sysctl.conf` with root permissions and change the `fs.inotify.max_user_watches number` to a bigger one.

`fs.inotify.max_user_watches=524288`

After modifying and saving the file, run `sudo sysctl -p` to apply the changes.

## Power Management
Remove sleep time for on power.

