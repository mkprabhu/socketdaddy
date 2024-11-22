#!/bin/bash

BROKER_LIST="broker1:9092"
TOPIC_NAME="my-topic"
CLIENT_PROPERTIES=/path/to/client.properties

EARLIEST=$($KAFKA_HOME/bin/kafka-run-class.sh kafka.tools.GetOffsetShell --bootstrap-server $BROKER_LIST --topic $TOPIC_NAME --command-config $CLIENT_PROPERTIES --time -2 | awk -F ":" '{sum += $3} END {print sum}')
LATEST=$($KAFKA_HOME/bin/kafka-run-class.sh kafka.tools.GetOffsetShell --bootstrap-server $BROKER_LIST --topic $TOPIC_NAME --command-config $CLIENT_PROPERTIES --time -1 | awk -F ":" '{sum += $3} END {print sum}')

TOTAL=$(paste <(echo "$EARLIEST") <(echo "$LATEST") | awk '{total += $2 - $1} END {print total}')
echo "Total messages in topic $TOPIC_NAME: $TOTAL"