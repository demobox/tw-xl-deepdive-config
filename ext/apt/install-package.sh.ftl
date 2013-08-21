#!/bin/sh -e
<#if deployed.updateRepository>
echo Updating repository
apt-get update
</#if>
apt-get install ${deployed.packageName} -y