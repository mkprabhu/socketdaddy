# Kafka Topic Data Purging Scripts

This directory contains two Bash scripts to purge data from a Kafka topic. The scripts adjust the topic's `retention.ms` property to a very short interval, forcing Kafka to delete old data. Once the retention period has elapsed, the original retention settings are restored.

## Scripts Overview

1. **Purge Data Without Authentication:**
   - For Kafka clusters that do not require authentication.
   - Uses the `kafka-configs.sh` script to alter the retention configuration.

2. **Purge Data With Authentication:**
   - For Kafka clusters that require authentication.
   - Passes a `client.properties` file containing the necessary security credentials.

For more details on purging Kafka topics, read this guide on [SocketDaddy.com](https://bit.ly/3Ojgqlw).

---

## Important to note
The scripts will remove any retention config applied on the topic. If you have any retention configured on your topic specifically, you may need to apply the retention config again using:
```
$KAFKA_BIN_DIR/kafka-configs.sh --bootstrap-server $BOOTSTRAP_SERVER --entity-type topics --entity-name $TOPIC_NAME --alter --add-config retention.ms=<YOUR_RETENTION_MS>
```
---

## Script 1: Purge Without Authentication

### Prerequisites
- Kafka is installed and accessible on your system.
- The Kafka topic you want to purge exists.

### Using the `purge_kafka_topic_no_auth.sh` script 
1. Open the script `purge_kafka_topic_no_auth.sh`.
2. Update the following variables:
   - `KAFKA_BIN_DIR`: Path to Kafka's `bin` directory.
   - `BOOTSTRAP_SERVER`: Kafka bootstrap server address.
   - `TOPIC_NAME`: The name of the Kafka topic to purge.
3. Run the script:
   ```bash
   ./purge_kafka_topic_no_auth.sh
   ```

## Script 2: Purge With Authentication
1. Open the script `purge_kafka_topic_with_auth.sh`.
2. Update the following variables:
   - `KAFKA_BIN_DIR`: Path to Kafka's `bin` directory.
   - `BOOTSTRAP_SERVER`: Kafka bootstrap server address.
   - `TOPIC_NAME`: The name of the Kafka topic to purge.
   - `CLIENT_PROPERTIES`: Path to the client properties file
3. Run the script:
   ```bash
   ./purge_kafka_topic_with_auth.sh
   ```

---

## Summary
Purging data from Kafka topics can be essential when you need to start fresh or clear out unwanted data without deleting the topic itself. While Kafka doesn't have a direct "purge" command, it offers cleanup policies that control how data is retained and deleted in topics. This guide on [SocketDaddy.com](https://socketdaddy.com/apache-kafka/how-to-purge-data-from-kafka-topics/) covers how to purge data from Kafka topics configured with the delete and compact cleanup policies, providing practical command-line examples to help you perform data purges effectively.