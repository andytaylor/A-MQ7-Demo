export CLASSPATH := ${PWD}/a-mq-broker-dist/lib/*:${PWD}/a-mq-client-amqp-jms-dist/lib/*

build: java/Requester.class java/Processor.class

%.class: %.java
	javac $<

clean:
	rm -f java/*.class
