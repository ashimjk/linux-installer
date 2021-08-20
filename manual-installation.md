# Manual Installation






## Setup Github Cli
Login : gh auth login
ZSH Completion : gh completion -s zsh > ~/.oh-my-zsh/completions/_gh


## SpaceShip Theme (Covered)
```shell
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

Now, set ZSH_THEME="spaceship" in your .zshrc


## Installl Zsh-Autosuggestions (Covered)
```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Add `zsh-autosuggestions` in plugins


## Install Zsh-Syntax-Highlighting (Covered)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

Add `zsh-syntax-highlighting` in plugins

## Install Node (Covered)
```shell
nvm install node
nvm install 12.19.0
```


## Install AngularCli (Covered)
```shell
npm install -g @angular/cli@11.2.14
```
