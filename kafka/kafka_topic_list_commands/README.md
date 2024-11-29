# Kafka Topic Listing Commands

This repository contains example commands for listing and describing topics in an Apache Kafka cluster. These commands help manage and monitor Kafka topics effectively.

## Commands Included

1. **List All Topics in the Kafka Cluster**
   ```bash
   kafka-topics.sh --list --bootstrap-server <BROKER_LIST>
   ```

2. **Describe a Specific Topic**
   ```bash
   kafka-topics.sh --describe --topic <TOPIC_NAME> --bootstrap-server <BROKER_LIST>
   ```

3. **List Topics with Authentication**
   ```bash
   kafka-topics.sh --list --bootstrap-server <BROKER_LIST> --command-config client.properties
   ```

4. **Filter Topics by Name**
   ```bash
   kafka-topics.sh --list --bootstrap-server <BROKER_LIST> | grep 'user'
   ```

## Reference

For detailed explanations of these commands, refer to the original post on SocketDaddy:  
[List Kafka Topics: Commands and Examples](https://socketdaddy.com/apache-kafka/list-kafka-topics/?source=github&medium=example_code&campaign=readme)
