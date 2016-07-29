# Upper

    $ cd upper

    # Put the broker code in a known location
    $ ln -s <your-broker-dist-dir> a-mq-broker-dist

    # Create a broker instance at a known location
    $ a-mq-broker-dist/bin/create a-mq-broker-instance
    [...]

    # Put the jms code in a known location
    $ ln -s <your-client-amqp-jms-dist-dir> a-mq-client-amqp-jms-dist

    # Build the requester and processor programs
    $ make

    # Setup the CLASSPATH
    $ source env.sh

    [-> Add "jobs" core queue to broker.xml]

    $ ./start-broker.sh
    [...]

    $ ./start-processor.sh 

    $ ./send-request.sh 
    REQUESTER: Sent request 'abc'
    PROCESSOR: Received request 'abc'
    PROCESSOR: Sent response 'ABC'
    REQUESTER: Received response: 'ABC'
