alias sudo='sudo env PATH="$PATH"'
alias kafka_prop='sudo nano /etc/kafka.properties'
alias kafka_start='sudo systemctl start kafka.service'
alias kafka_status='sudo systemctl status kafka.service'
alias kafka_stop='sudo systemctl stop kafka.service'
alias zookeeper_start='sudo systemctl start zookeeper.service'
alias zookeeper_status='sudo systemctl status zookeeper.service'
alias zookeeper_stop='sudo systemctl stop zookeepera.service'

alias kt='/opt/kafka/bin/kafka-topics.sh --zookeeper kafka_01:2181'
alias kcp='/opt/kafka/bin/kafka-console-producer.sh --broker-list kafka_01:9092'
alias kcc='/opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server kafka_01:9092'
alias kcg='kafka-consumer-groups.sh --bootstrap-server kafka_01:9092'