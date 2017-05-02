cd /usr/local/kafka_2.11-0.10.2.0/;
bin/kafka-topics.sh --create --zookeeper master:2181 --replication-factor 1 --partitions 4 --topic test

bin/kafka-topics.sh --list --zookeeper master:2181
