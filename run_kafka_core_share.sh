#docker run --network container:spark_core -ti  --name kafka_core \
#docker run --network container:hadoop_core -ti  --name kafka_core \
docker run --network container:info_core -ti  --name kafka_core \
    -d penolove/centos7:kafka_core;
