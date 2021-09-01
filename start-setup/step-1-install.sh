echo "Updating Ubuntu Cache"
echo "--------------------------------------"
sudo apt update

echo "\n\nUbuntu Cache Upgrade"
echo "--------------------------------------"
sudo apt upgrade -y

echo "\n\nInstalling Git"
echo "--------------------------------------"
sudo apt install git -y

echo "\n\nInstalling Wget"
echo "--------------------------------------"
sudo apt install wget -y

echo "\n\nInstalling Curl"
echo "--------------------------------------"
sudo apt install curl -y

echo "\n\nInstalling Tree"
echo "--------------------------------------"
sudo apt install tree -y

echo "\n\nInstalling Build Essential"
echo "--------------------------------------"
sudo apt install build-essential -y

echo "\n\nInstalling Vim"
echo "--------------------------------------"
sudo apt install vim -y

echo "\n\nInstalling Unzip"
echo "--------------------------------------"
sudo apt install unzip -y

echo "\n\nInstalling Zip"
echo "--------------------------------------"
sudo apt install zip -y

echo "\n\nInstalling Konsole"
echo "--------------------------------------"
sudo apt install konsole -y

echo "\n\nInstalling GH"
echo "--------------------------------------"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

echo "\n\nInstalling Snap"
echo "--------------------------------------"
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd -y

echo "\n\nInstalling from Snap Store"
echo "--------------------------------------"

echo "\n\nInstalling Visual Studio Code"
echo "--------------------------------------"
sudo snap install code --classic

echo "\n\nInstalling Kubectl"
echo "--------------------------------------"
sudo snap install kubectl --classic

echo "\n\nInstalling Slack"
echo "--------------------------------------"
sudo snap install slack --classic

echo "\n\nInstalling SuperProductivity"
echo "--------------------------------------"
sudo snap install superproductivity

echo "\n\nInstalling Vlc"
echo "--------------------------------------"
sudo snap install vlc

echo "\n\nInstalling Postman"
echo "--------------------------------------"
sudo snap install postman

echo "\n\nInstalling DrawIO"
echo "--------------------------------------"
sudo snap install drawio

echo "\n\nInstalling Zsh"
echo "--------------------------------------"
sudo apt install zsh -y

echo "\n\nInstalling OhMyZsh (Blocker)"
echo "--------------------------------------"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo "\n\nInstalling Sdkman"
echo "--------------------------------------"
curl -s "https://get.sdkman.io" | bash


echo "\n\nInstalling Docker (Blocker)"
echo "--------------------------------------"
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo apt update
sudo apt install docker.io -y
sudo groupadd docker
sudo usermod -aG docker $USER


echo "\n\nInstalling Docker-Compose"
echo "--------------------------------------"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


echo "\n\nInstalling Docker-Machine"
echo "--------------------------------------"
base=https://github.com/docker/machine/releases/download/v0.16.0 \
  && curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine \
  && sudo mv /tmp/docker-machine /usr/local/bin/docker-machine \
  && chmod +x /usr/local/bin/docker-machine


echo "\n\nInstalling Helm"
echo "--------------------------------------"
wget https://get.helm.sh/helm-v2.14.3-linux-amd64.tar.gz
tar -zxvf helm-v2.14.3-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm

rm -rf linux-amd64
rm -rf helm-v2.14.3-linux-amd64.tar.gz


echo "\n\nInstalling K6"
echo "--------------------------------------"
sudo apt update && sudo apt install ca-certificates gnupg2 -y
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C5AD17C747E3415A3642D57D77C6C491D6AC1D69
echo "deb https://dl.k6.io/deb stable main" | sudo tee /etc/apt/sources.list.d/k6.list
sudo apt update
sudo apt install k6


echo "\n\nInstalling Zoom (Blocker)"
echo "--------------------------------------"
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb -y
rm -rf ./zoom_amd64.deb


echo "\n\nInstalling Telepresence"
echo "--------------------------------------"
sudo curl -fL https://app.getambassador.io/download/tel2/linux/amd64/latest/telepresence -o /usr/local/bin/telepresence
sudo chmod a+x /usr/local/bin/telepresence


echo "\n\nInstalling Python"
echo "--------------------------------------"
sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev
sudo apt install -y python3-venv
