#make sure each serve.peoperties has unique id
zookeep="y"
zookeeper_ip="10.0.20.70:2181"
broker_id="1"

######### ip dns setting #########
cp /etc/hosts ~/hosts.news && sed -i "/master/ s/.*//g" ~/hosts.news &&\
echo '10.0.20.67 invpm27' >> ~/hosts.news;
echo '10.0.20.68 invpm28' >> ~/hosts.news;
echo '10.0.20.69 invpm29' >> ~/hosts.news;
echo '10.0.20.71 invpm31' >> ~/hosts.news;
echo '10.0.20.70 master' >> ~/hosts.news;
yes | cp  ~/hosts.news /etc/hosts ;
######### ip dns setting #########

######### broker.id and zookeeper ip ########
sed -i "/broker.id=/ s/.*/broker.id=$broker_id/g" /usr/local/kafka_2.11-0.10.2.0/config/server.properties
sed -i "/zookeeper.connect=/ s/.*/zookeeper.connect=$zookeeper_ip/g" /usr/local/kafka_2.11-0.10.2.0/config/server.properties
######### broker.id and zookeeper ip ########


echo 'export JAVA_HOME=/usr/java/jdk1.8.0_11' >> ~/.bashrc
echo 'export PATH="$JAVA_HOME/bin:$PATH"' >> ~/.bashrc

if [ "$zookeep" == "y" ]; then
    cd /usr/local/kafka_2.11-0.10.2.0;
    bin/zookeeper-server-start.sh config/zookeeper.properties > /dev/null & 
fi
