#!/bin/bash

apt install openjdk-8-jdk openjdk-8-jre
cat >> /etc/environment <<EOL
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
EOL
wget https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.3.0-Lithium/distribution-karaf-0.3.0-Lithium.tar.gz
tar zxvf distribution-karaf-0.3.0-Lithium.tar.gz
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
git clone https://github.com/CiscoDevNet/OpenDaylight-Openflow-App.git
npm install -g grunt-cli
cd distribution-karaf-0.3.0-Lithium
./bin/karaf
