# Dockerized Kafka Wrapper

Kafka bundles a handful of useful scripts for various administration tasks: https://github.com/apache/kafka/tree/trunk/bin

Using these required installing Kafka locally, which is a bit of a pain. This project wraps the Kafka scripts in a Docker container, so you can run them without installing Kafka.

Images are tagged with the Kafka and Scala versions they contain. For example, `cjfinnell/kafka-wrapper:2.12-2.3.0` contains Kafka 2.3.0 and Scala 2.12.
