FROM bitnami/kafka:3.5.1

# Expose ports for Kafka and Zookeeper
EXPOSE 9092 2181

# Environment variables for Zookeeper & Kafka
ENV KAFKA_CFG_ZOOKEEPER_CONNECT=localhost:2181 \
    KAFKA_CFG_ADVERTISED_LISTENERS=PLAINTEXT://0.0.0.0:9092 \
    KAFKA_CFG_LISTENERS=PLAINTEXT://0.0.0.0:9092 \
    ALLOW_PLAINTEXT_LISTENER=yes \
    KAFKA_CFG_AUTO_CREATE_TOPICS_ENABLE=true

CMD ["/opt/bitnami/scripts/kafka/entrypoint.sh", "/run.sh"]
