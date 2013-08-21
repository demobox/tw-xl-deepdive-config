#!/bin/sh -e
${deployed.targetDirectory}/stop-agent.sh
echo Waiting 10s for Go Agent to stop...
sleep 10
echo Removing Go Agent
rm -rf ${deployed.targetDirectory}