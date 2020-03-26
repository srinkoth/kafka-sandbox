FROM openjdk:8-jdk

COPY ./kafka.tgz /kafka.tgz
RUN tar -xzf /kafka.tgz -C /opt/
RUN ls -l /opt
