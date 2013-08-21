#!/bin/sh -e
DAEMON=Y
export DAEMON
JAVA_HOME=${deployed.container.javaHome}
export JAVA_HOME
GO_SERVER_PORT=${deployed.port}
export GO_SERVER_PORT

mkdir -p ${deployed.targetDirectory}
mv go-server-*/go-server-*/* ${deployed.targetDirectory}
chown -R $USER:$USER ${deployed.targetDirectory}
echo Starting Go server
chmod +x ${deployed.targetDirectory}/*.sh
${deployed.targetDirectory}/server.sh
sleep 2