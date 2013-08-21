#!/bin/sh -e
DAEMON=Y
export DAEMON
JAVA_HOME=${deployed.container.javaHome}
export JAVA_HOME
GO_SERVER=${deployed.server.container.address}
export GO_SERVER
GO_SERVER_PORT=${deployed.server.port}
export GO_SERVER_PORT
 
rm -rf ${deployed.targetDirectory}
mkdir -p ${deployed.targetDirectory}
mv go-agent-*/go-agent-*/* ${deployed.targetDirectory}
chown -R $USER:$USER ${deployed.targetDirectory}
echo Starting Go agent
chmod +x ${deployed.targetDirectory}/*.sh
${deployed.targetDirectory}/agent.sh
sleep 2