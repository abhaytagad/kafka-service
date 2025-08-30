FROM wurstmeister/kafka:2.13-2.8.0

# ZooKeeper runs internally on 2181
ENV KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://0.0.0.0:9092
ENV KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092
ENV KAFKA_ZOOKEEPER_CONNECT=localhost:2181

EXPOSE 9092 2181

CMD ["sh", "-c", "service zookeeper start && start-kafka.sh"]
