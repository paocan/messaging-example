FROM rabbitmq

RUN sudo apt-get update

RUN apt-get install default-jre

ADD rmq-example/target/rmq-example-1.0-SNAPSHOT.jar /root/rmqexample.jar

ENTRYPOINT ["java", "-jar", "/root/rmqexample.jar"]
