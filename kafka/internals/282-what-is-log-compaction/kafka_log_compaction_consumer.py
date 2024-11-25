
from kafka import KafkaConsumer

consumer = KafkaConsumer(
    'compacted-topic',
    bootstrap_servers='localhost:9092',
    auto_offset_reset='earliest',
    enable_auto_commit=True,
    group_id='example-group'
)

for message in consumer:
    print(f"Key: {message.key.decode()}, Value: {message.value.decode()}")
