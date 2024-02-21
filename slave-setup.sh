echo "creating jenkins folder in /opt/jenkins"
sudo mkdir /opt/jenkins
sudo chmod 777 /opt/jenkins
echo "Installing Java"
sudo apt update
sudo apt -y install fontconfig openjdk-17-jre
