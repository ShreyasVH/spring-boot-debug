if ! lsof -i :$PORT > /dev/null; then
    echo "Starting"
    NAME=demo
	VERSION=0.0.1-SNAPSHOT
    java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=$DEBUG_PORT -jar "target/$NAME-$VERSION.jar" > server.log 2>&1 &
fi