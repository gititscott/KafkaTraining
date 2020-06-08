# KafkaTraining

#Configuring Machine

#Common Commands
kafka-topics.sh
kafka-topics.sh --zookeeper kafka_01:2181 --list
kafka-topics.sh --zookeeper kafka_01:2181 --topic NBA --create --partitions 3 --replication-factor 2
kafka-topics.sh --zookeeper kafka_01:2181 --topic NBA --describe
kafka-topics.sh --zookeeper kafka_01:2181 --topic NBA --delete

kafka-console-producer.sh --zookeeper kafka_01:2181
kcp --topic NBA
kcp --topic NBA --producer-property acks=all

#only starts reading new events
kafka-console-consumer.sh --bootstrap-server kafka_01:9092 --topic NBA
kafka-console-consumer.sh --bootstrap-server kafka_01:9092 --topic NBA --from_beginning
kafka-console-consumer.sh --bootstrap-server kafka_01:9092 --topic NBA --from_beginning --group WEST

kafka-consumer-groups.sh --bootstrap-server kafka_01:9092 
kcg --describe --group WEST
kcg --describe --group EAST

#RESET OFFSET
kcg --reset-offsets --to-earliest --topic NBA --group WEST --execute
kcg --reset-offsets --shift-by -2 --topic NBA --group WEST --execute