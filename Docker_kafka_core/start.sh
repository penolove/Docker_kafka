#make sure each serve.peoperties has unique id
zookeep="$1"
zookeeper_ip="$2"
broker_id="$3"


######### ip dns setting #########
cp /etc/hosts ~/hosts.news && sed -i "/master/ s/.*//g" ~/hosts.news &&\
echo '10.0.20.67 invpm27' >> ~/hosts.news;
echo '10.0.20.68 invpm28' >> ~/hosts.news;
echo '10.0.20.69 invpm29' >> ~/hosts.news;
echo '10.0.20.71 invpm31' >> ~/hosts.news;
echo '10.0.20.70 master' >> ~/hosts.news;
yes | cp  ~/hosts.news /etc/hosts ;
##################################



cd /usr/local/kafka_2.11-0.10.2.0
if [ "$zookeep" == "y" ]; then
    bin/zookeeper-server-start.sh config/zookeeper.properties > /dev/null & 
fi
bin/kafka-server-start.sh config/server.properties > /dev/null &
cd 

echo "server strarted";
