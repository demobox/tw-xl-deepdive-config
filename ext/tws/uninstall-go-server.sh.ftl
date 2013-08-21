#!/bin/sh -e
${deployed.targetDirectory}/stop-server.sh
echo Waiting for Go Server to shut down...
sleep 30
rm -rf ${deployed.targetDirectory}