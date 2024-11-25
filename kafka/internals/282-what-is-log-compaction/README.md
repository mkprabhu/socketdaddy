
# Kafka Log Compaction Example

This repository contains two Python scripts that demonstrate the concept of **log compaction** in Apache Kafka. These scripts illustrate how Kafka retains only the latest value for each key in a compacted topic, ensuring efficient storage and recovery of the latest state.

## Scripts Overview

1. **`kafka_log_compaction_producer.py`**:
   - Sends multiple updates for the same key to a Kafka topic.
   - Demonstrates how messages with the same key can update values in a compacted topic.
   - Run this script to produce messages into the topic.

2. **`kafka_log_compaction_consumer.py`**:
   - Consumes messages from the Kafka topic.
   - Displays how Kafka retains only the latest value for each key after log compaction.
   - Run this script to observe the compacted state of the topic.

## Prerequisites

- Apache Kafka installed and running locally or on a server.
- Python 3.x installed on your system.
- `kafka-python` library installed:
  ```bash
  pip install kafka-python
  ```

## Steps to Use

1. **Start Kafka**:
   Ensure your Kafka broker is running locally. For example:
   ```bash
   bin/zookeeper-server-start.sh config/zookeeper.properties
   bin/kafka-server-start.sh config/server.properties
   ```

2. **Create a Compacted Topic**:
   Create a Kafka topic with log compaction enabled:
   ```bash
   kafka-topics --create      --topic compacted-topic      --partitions 3      --replication-factor 1      --config cleanup.policy=compact      --bootstrap-server localhost:9092
   ```

3. **Run the Producer Script**:
   Execute the producer script to send messages:
   ```bash
   python kafka_log_compaction_producer.py
   ```

4. **Run the Consumer Script**:
   Execute the consumer script to observe log compaction:
   ```bash
   python kafka_log_compaction_consumer.py
   ```

## Expected Output

- **Producer**:
  Sends multiple messages with the same key (e.g., `user1`).
  ```
  Messages sent.
  ```

- **Consumer**:
  Displays the latest value for each key after compaction:
  ```
  Key: user1, Value: update-4
  ```

## Learn More About Log Compaction

For a detailed explanation of log compaction in Apache Kafka, visit the original blog post on SocketDaddy:  
[What is Log Compaction in Kafka?](https://socketdaddy.com/apache-kafka/what-is-log-compaction-in-kafka/?source=github&campaign=example_code&medium=readme)

---

## License

This project is licensed under the MIT License. Feel free to use and modify the scripts.
