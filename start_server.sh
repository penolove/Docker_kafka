#make sure each serve.peoperties has unique id
zookeep="$1"

cd /usr/local/kafka_2.11-0.10.2.0
if [ "$zookeep" == "y" ]; then
    bin/zookeeper-server-start.sh config/zookeeper.properties > /dev/null & 
fi
bin/kafka-server-start.sh config/server.properties > /dev/null &
cd 
echo "server strarted";
