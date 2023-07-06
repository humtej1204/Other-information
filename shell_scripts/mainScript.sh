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
## JAVA
sudo apt install openjdk-8-jre-headless -y
sudo apt install openjdk-11-jre-headless -y
sudo apt install openjdk-16-jre-headless -y
sudo apt install openjdk-17-jre-headless -y
sudo apt install openjdk-8-jdk -y
sudo apt install openjdk-11-jdk -y
sudo apt install openjdk-16-jdk -y
sudo apt install openjdk-17-jdk -y
echo -e "export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64" >> ~/.bashrc
echo -e 'export PATH=${JAVA_HOME}/bin:${PATH}' >> ~/.bashrc
source ~/.bashrc
##### con: sudo update-alternatives --config java
##### puedes configurar que version dej JDK de java deseas usar
## MAVEN
sudo apt install maven -y
echo -e "export M2_HOME=/opt/maven" >> ~/.bashrc
echo -e "export MAVEN_HOME=/opt/maven" >> ~/.bashrc
echo -e 'export PATH=${M2_HOME}/bin:${PATH}' >> ~/.bashrc
source ~/.bashrc
## AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -u awscliv2.zip
sudo ./aws/install
##### depues de ello ejecutar:
##### aws configure
##### para poder configurar el AWS Access Key ID, AWS Secret Access Key, Default region name y Default output format