FROM alpine:latest

ARG KAFKA_VERSION
ARG SCALA_VERSION

RUN mkdir /kafka && cd /kafka && \
	apk add bash wget openjdk8 && \
	wget -O kafka.tgz https://archive.apache.org/dist/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz && \
	tar -xf kafka.tgz && rm kafka.tgz && \
	cd ./kafka_${SCALA_VERSION}-${KAFKA_VERSION}/bin && \
	find . -type f -name '*.sh' | while read f; do ln -s "$f" "${f%.sh}"; done

WORKDIR /kafka/kafka_${SCALA_VERSION}-${KAFKA_VERSION}/bin
ENV PATH="${PWD}:${PATH}"

ENTRYPOINT ["bash", "-c"]
CMD ["find . -type l"]
