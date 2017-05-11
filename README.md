# Docker_kafka

you can edit start.sh after build.sh
since run kafka_core will mount to container

## make sure setting
- zookeeper ip : Docker_kafka_core/start.sh
- host ip : Docker_kafka_core/start.sh
- broker id : Docker_kafka_core/start.sh
- container ip : pipework.sh (needn't if share net)
- hostname : run_kafka_core.sh (needn't if share net)

master needn't run start_server.sh in Docker file


## build images
```
cd Docker_kafka_core;
./build.sh;
```

## start contatiner
```
cd ..;
./run_kafka_core.sh;
./stop_kafka_core.sh;
```

## pipework [[ref]](https://github.com/jpetazzo/pipework.git)
pipework.sh


## command orders

docker build --rm -t penolove/centos7:kafka .

docker run -ti penolove/centos7:kafka


sudo ~/pipework/pipework enp1s0f0  spark_core 10.0.20.67/24;

docker run -h invpm27 --name spark_core \
    -d penolove/centos7:spark_worker;

docker kill spark_core;

docker rm $(docker ps -qa);
