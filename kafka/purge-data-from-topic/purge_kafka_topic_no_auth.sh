#!/bin/bash

# Variables
KAFKA_BIN_DIR="/path/to/kafka/bin"  # Update with your Kafka bin directory
BOOTSTRAP_SERVER="localhost:9092"   # Update with your Kafka bootstrap server
TOPIC_NAME="your_topic_name"        # Update with your topic name

# Set retention.ms to 1 second
$KAFKA_BIN_DIR/kafka-configs.sh --bootstrap-server $BOOTSTRAP_SERVER --entity-type topics --entity-name $TOPIC_NAME --alter --add-config retention.ms=1000

# Wait for the retention period to elapse
sleep 5  # Adjust sleep duration as needed

# Reset retention.ms to its default value
$KAFKA_BIN_DIR/kafka-configs.sh --bootstrap-server $BOOTSTRAP_SERVER --entity-type topics --entity-name $TOPIC_NAME --alter --delete-config retention.ms

echo "Data purged from topic '$TOPIC_NAME'."
