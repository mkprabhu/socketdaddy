# Count Messages in a Kafka Topic Using kafka-run-class.sh
Example scripts for counting the number of messages in a Kafka Topic. For detailed instructions and explaination, see [How to Count Messages in a Kafka Topic](https://bit.ly/4fZ8jGy).

## Using the `count_noauth.sh` script
Use this script if you do not have to pass any additional command properties file. If your environment has SSL enabled or you must pass additional commproperties file, use the `count_with_command_properties.sh` script. 

### Update the variables in the script
- `$BROKER_LIST`: Specifies the Kafka brokers to connect to. Replace `broker1:9092` with a comma-separated list of broker addresses (e.g., broker1:9093,broker2:9093)
- `$TOPIC_NAME`: Specifies the name of the topic you are querying. Replace `my-topic` with your topic name.

### Usage
```
$ sh count_noauth.sh
```

## Using the `count_with_command_properties.sh` script
Use this script if you need to pass a command properties file.

### Update the variables in the script
- `BROKER_LIST`: Specifies the Kafka brokers to connect to. Replace `broker1:9092` with a comma-separated list of broker addresses (e.g., broker1:9093,broker2:9093)
- `TOPIC_NAME`: Specifies the name of the topic you are querying. Replace `my-topic` with your topic name.
- `CLIENT_PROPERTIES`: Points to the properties file containing authentication and security configurations. Replace `/path/to/client.properties` with the actual path to your properties file.

### Example client.properties file
```
security.protocol=SASL_SSL
sasl.mechanism=PLAIN
ssl.truststore.location=/path/to/truststore.jks
ssl.truststore.password=truststore-password
sasl.jaas.config=org.apache.kafka.common.security.plain.PlainLoginModule required \
  username="your-username" \
  password="your-password";

```

### Usage
```
$ sh count_with_command_properties.sh
```

## Summary
When managing [Apache Kafka](https://bit.ly/3ATkGFo), you may run into a scenario to monitor how many messages are stored in a topic. Although Kafka doesn't provide a direct command to count messages, you can achieve this using the kafka-run-class.sh script and the kafka.tools.GetOffsetShell utility. [This guide](https://bit.ly/4fZ8jGy) on SocketDaddy.com explains the steps for counting messages in a Kafka topic, including detailed examples.
