echo "Updating Ubuntu Cache"
echo "--------------------------------------"
apt update

echo "\n\nUbuntu Cache Upgrade"
echo "--------------------------------------"
apt upgrade -y

echo "\n\nInstalling Git"
echo "--------------------------------------"
apt install git -y

echo "\n\nInstalling Wget"
echo "--------------------------------------"
apt install wget -y

echo "\n\nInstalling Curl"
echo "--------------------------------------"
apt install curl -y

echo "\n\nInstalling Build Essential"
echo "--------------------------------------"
apt install build-essential -y

# echo "\n\nInstalling Vim"
# echo "--------------------------------------"
# apt install vim -y

echo "\n\nInstalling Unzip"
echo "--------------------------------------"
apt install unzip -y

echo "\n\nInstalling Zip"
echo "--------------------------------------"
apt install zip -y

# echo "\n\nInstalling Snap"
# echo "--------------------------------------"
# rm /etc/apt/preferences.d/nosnap.pref
# apt update
# apt install snapd -y

# echo "\n\nInstalling from Snap Store"
# echo "--------------------------------------"

# echo "\n\nInstalling Visual Studio Code"
# echo "--------------------------------------"
# snap install code --classic

# echo "\n\nInstalling Kubectl"
# echo "--------------------------------------"
# snap install kubectl --classic

# echo "\n\nInstalling Slack"
# echo "--------------------------------------"
# snap install slack --classic

# echo "\n\nInstalling Hub"
# echo "--------------------------------------"
# snap install hub --classic

# echo "\n\nInstalling SuperProductivity"
# echo "--------------------------------------"
# snap install superproductivity

# echo "\n\nInstalling Vlc"
# echo "--------------------------------------"
# snap install vlc

# echo "\n\nInstalling Postman"
# echo "--------------------------------------"
# snap install postman

echo "\n\nInstalling Zsh"
echo "--------------------------------------"
apt install zsh -y
chsh -s $(which zsh)

echo "\n\nInstalling OhMyZsh (Blocker)"
echo "--------------------------------------"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo "\n\nInstalling Sdkman"
echo "--------------------------------------"
curl -s "https://get.sdkman.io" | bash


echo "\n\nInstalling Docker (Blocker)"
echo "--------------------------------------"
apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt-get update
apt-get install docker.io -y
groupadd docker
usermod -aG docker $USER


echo "\n\nInstalling Docker-Compose"
echo "--------------------------------------"
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose


echo "\n\nInstalling Docker-Machine"
echo "--------------------------------------"
base=https://github.com/docker/machine/releases/download/v0.16.0 \
  && curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine \
  && mv /tmp/docker-machine /usr/local/bin/docker-machine \
  && chmod +x /usr/local/bin/docker-machine


echo "\n\nInstalling Helm"
echo "--------------------------------------"
wget https://get.helm.sh/helm-v2.14.3-linux-amd64.tar.gz
tar -zxvf helm-v2.14.3-linux-amd64.tar.gz
mv linux-amd64/helm /usr/local/bin/helm

rm -rf linux-amd64
rm -rf helm-v2.14.3-linux-amd64.tar.gz


echo "\n\nInstalling K6"
echo "--------------------------------------"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C5AD17C747E3415A3642D57D77C6C491D6AC1D69
echo "deb https://dl.k6.io/deb stable main" | tee /etc/apt/sources.list.d/k6.list
apt-get update
apt-get install k6


echo "\n\nInstalling Zoom (Blocker)"
echo "--------------------------------------"
wget https://zoom.us/client/latest/zoom_amd64.deb
apt install ./zoom_amd64.deb
rm -rf ./zoom_amd64.deb


echo "\n\nInstalling Telepresence"
echo "--------------------------------------"
curl -fL https://app.getambassador.io/download/tel2/linux/amd64/latest/telepresence -o /usr/local/bin/telepresence
chmod a+x /usr/local/bin/telepresence
