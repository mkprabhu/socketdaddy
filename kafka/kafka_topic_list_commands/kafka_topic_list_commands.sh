
# List all topics in the Kafka cluster
kafka-topics.sh --list --bootstrap-server <BROKER_LIST>

# Describe a specific topic
kafka-topics.sh --describe --topic <TOPIC_NAME> --bootstrap-server <BROKER_LIST>

# List topics using a specific client properties file for authentication
kafka-topics.sh --list --bootstrap-server <BROKER_LIST> --command-config client.properties

# Filter topics by name (e.g., topics containing 'user')
kafka-topics.sh --list --bootstrap-server <BROKER_LIST> | grep 'user'
