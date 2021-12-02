# Manual Installation


## Spaceship Theme, Auto-Suggestions and Syntax-Highlighting
```sh
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1;
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme";
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting;
```

Now, set `ZSH_THEME="spaceship"` in your .zshrc
Add `zsh-autosuggestions` in plugins
Add `zsh-syntax-highlighting` in plugins


## Copy Zshrc Files
- Copy .zshrc and .zsh_history file
- Replace /home/ashimjk with current user location


## Install NVM and Angular
```
nvm install 12.19.0;
npm install -g @angular/cli@11.2.15;
```


## Setup Github Cli
Login : `gh auth login`
ZSH Completion : `gh completion -s zsh > ~/.oh-my-zsh/completions/_gh`


## Jetbrains ToolBox
[Download from here](https://www.jetbrains.com/toolbox-app/)


## Configure Intellij
- codestyles
- keymaps
- templates


## Configure Webstorm
- codestyles
- keymaps
- templates


## Configure DataGrip
- codestyles
- keymaps
- templates


## Configure PyCharm
- codestyles
- keymaps
- templates
