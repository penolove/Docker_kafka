cd /usr/local/kafka_2.11-0.10.2.0/;
bin/kafka-console-consumer.sh --bootstrap-server invpm27:9092,invpm28:9092,invpm29:9092,invpm31:9092\
    --topic test --from-beginning

