FROM wurstmeister/kafka:latest
EXPOSE 9092

ENV KAFKA_ZOOKEEPER_CONNECT=https://zookeeper-service-bm1j.onrender.com
ENV KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://kafka-service:9092
ENV KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1

CMD ["start-kafka.sh"]
