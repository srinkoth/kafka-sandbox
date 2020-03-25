FROM openjdk:8-jdk
RUN apt update && apt dist-upgrade -y && apt install python3 git -y
RUN git clone -b 2.4.1 --single-branch https://github.com/apache/kafka
WORKDIR /kafka
RUN ./gradlew -PscalaVersion=2.13 releaseTarGz
RUN ls -lah ./core/build/distributions
RUN tar -xzvf ./core/build/distributions/kafka_2.13-2.4.1.tgz -C /opt
RUN ls -alh /opt/kafka*/bin
