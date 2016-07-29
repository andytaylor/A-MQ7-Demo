#!/bin/sh

exec java -cp java:java/jndi.properties:$CLASSPATH Processor &
