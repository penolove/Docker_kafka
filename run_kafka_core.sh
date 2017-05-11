docker run -ti -h invpm28  --name kafka_core \
    -v $(pwd)/Docker_kafka_core/start.sh:/root/start.sh \
    -d penolove/centos7:kafka_core;
sudo ./pipework.sh
