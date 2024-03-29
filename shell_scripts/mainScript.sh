#Update Linux packages
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install build-essential -y

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

## LAZYGIT
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm -rf lazygit lazygit.tar.gz

## NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc

## NODEJS
nvm install node #Latest Version
nvm install 14 #Version 14 - cambiar numero para cambiar version

## NPM
sudo apt install npm -y
npm install -g npm@latest

## NESTJS
npm i -g @nestjs/cli

## ANGULAR
sudo npm install -g @angular/cli

## REACT JS
sudo npm -g install create-react-app

## MONGODB
sudo apt-get install mongodb -y
mkdir -p /data/db
sudo chown -R `id -un` /data/db
##### para iniciar mongodb primero debemos verificar el nombre del servicio
##### ya que en algunos lados puede tener un nombre diferente como "mongodb, mongodb-server, mongodb-org, etc".
##### esto se hace con: sudo service --status-all
##### una vez encontrado el nombre del servicio mongo
##### su puede entrar al mongo shell con el comando: mongo
##### para ver  la version: mongo --version

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

## FLUTTER
git clone -b master https://github.com/flutter/flutter.git
./flutter/bin/flutter --version
echo 'export PATH="$PATH:'`pwd`'/flutter/bin"' >> ~/.bashrc
source ~/.bashrc
flutter precache
##### correr el comando: flutter doctor
##### para verificar si existe alguna dependencia que se necesite para completar la configuración
##### (para una salida detallada, añade la etiqueta -v)

## ANDROID SDK
curl -o android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip
unzip -u android-sdk.zip
mkdir -p Android/SDK/cmdline-tools/tools/
mv cmdline-tools/* Android/SDK/cmdline-tools/tools/
rmdir cmdline-tools
rm -rf android-sdk.zip
echo 'export ANDROID_PATH="'`pwd`'/Android/SDK"' >> ~/.bashrc
echo 'export ANDROID_HOME=${ANDROID_PATH}/cmdline-tools/tools/bin' >> ~/.bashrc
echo 'export ANDROID_PLATFORM_TOOLS=${ANDROID_PATH}/platform-tools' >> ~/.bashrc
echo 'export ANDROID_EMULATOR=${ANDROID_PATH}/emulator' >> ~/.bashrc
echo -e 'export PATH=${PATH}:${ANDROID_HOME}:${ANDROID_PLATFORM_TOOLS}' >> ~/.bashrc
chmod +x ./Android/SDK/cmdline-tools/tools/bin/sdkmanager
source ~/.bashrc
sdkmanager --install "cmdline-tools;latest"
sdkmanager "platform-tools"
sdkmanager "extras;google;m2repository" "extras;android;m2repository"
sdkmanager "build-tools;30.0.3"
sdkmanager "platforms;android-30"
sdkmanager "sources;android-30"
sdkmanager "system-images;android-30;default;x86_64"
sdkmanager --licenses

## AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -u awscliv2.zip
sudo ./aws/install
##### depues de ello ejecutar:
##### aws configure
##### para poder configurar el AWS Access Key ID, AWS Secret Access Key, Default region name y Default output format
