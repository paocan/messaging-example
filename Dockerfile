FROM rabbitmq

RUN apt-get update && apt-get -y install default-jre && apt-get -y clean && apt-get -y autoclean

ADD rmq-example/target/rmq-example-1.0-SNAPSHOT.jar /root/rmqexample.jar

ENTRYPOINT ["java", "-jar", "/root/rmqexample.jar"]
