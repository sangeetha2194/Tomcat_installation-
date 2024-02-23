
$1=$tomcat.v




apt-get update -y


apt-get install defualt-jdk -y

java --version

apt-get install wget -y
apt-get install unzip -y

mkdir opt
mkdir /opt/tomcat

sudo useradd -m -U -d /opt/tomcat -s /bin/false tomcat 

wget url

unzip apache-tomcat-$tomcat.v.tar.gz

mv apache-tomcat-$tomcat.v /opt/tomcat

# sudo tar -xf apache-tomcat-$tomcat.v.tar.gz -C /opt/tomcat

sudo chown -R tomcat: /opt/tomcat/apache-tomcat-$tomcat.v

cd /opt/tomcat/tomcat-$tomcat.v/bin

chmod +x startup.sh
chmod +x shutdown.sh

link -s /opt/tomcat/tomcat-$tomcat.v/bin/startup.sh /usr/local/bin/tomcatup
link -s /opt/tomcat/tomcat-$tomcat.v/bin/shutdown.sh /usr/local/bin/tomcatdown


./startup.sh


