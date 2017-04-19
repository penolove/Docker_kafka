# Docker_kafka
cd Docker_kafka_core
./build.sh
cd ..
./run_kafka_core.sh
./stop_kafka_core.sh



# command orders
docker build --rm -t penolove/centos7:kafka .

docker run -ti penolove/centos7:kafka


sudo ~/pipework/pipework enp1s0f0  spark_core 10.0.20.67/24;

docker run -h invpm27 --name spark_core \
    -d penolove/centos7:spark_worker;

docker kill spark_core;

docker rm $(docker ps -qa);
