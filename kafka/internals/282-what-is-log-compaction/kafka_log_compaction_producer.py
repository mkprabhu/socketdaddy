
from kafka import KafkaProducer
import time

producer = KafkaProducer(bootstrap_servers='localhost:9092')

for i in range(5):
    key = b'user1'
    value = f'update-{i}'.encode()
    producer.send('compacted-topic', key=key, value=value)
    time.sleep(1)

producer.flush()
print("Messages sent.")
