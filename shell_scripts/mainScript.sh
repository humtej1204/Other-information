#Update Linux packages
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install build-essential

#Install Packages
## CURL
sudo apt-get install curl
## TREE
sudo apt-get install tree
## MAKEFILE
sudo apt-get install make
## PYTHON
sudo apt-get install python3
sudo apt-get install python3-pip
echo alias pip=pip3 >> ~/.bashrc
source ~/.bashrc
pip install awsebcli --upgrade --user
## GIT
sudo apt install git
git config --global user.name "Humberto Tejada"
git config --global user.email "humtej1204@gmail.com"
## NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
## NODEJS
nvm install node #Latest Version
nvm install 14 #Version 14 - cambiar numero para cambiar version
## NPM
sudo apt install npm -y
npm install -g npm@latest
## ANGULAR
sudo npm install -g @angular/cli
## REACT JS
sudo npm -g install create-react-app