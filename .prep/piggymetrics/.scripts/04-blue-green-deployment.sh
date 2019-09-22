#!/usr/bin/env bash

# Create a green deployment
echo "az spring-cloud app deployment create --name green --app gateway \\
    --jar-path \${GATEWAY_JAR} \\
    --env CONFIG_SERVER_URI=\${CONFIG_SERVER_URI}"

az asc app deployment create --name green --app gateway \
    --jar-path ${GATEWAY_JAR} \
    --env CONFIG_SERVER_URI=${CONFIG_SERVER_URI}

read -n 1



# List deployments - there should be two
echo "az spring-cloud app deployment list --app gateway"
az spring-cloud app deployment list --app gateway

read -n 1

# Swap to green deployment
echo "az spring-cloud app set-deployment \\
    --deployment green \\
    --name gateway"

az spring-cloud app set-deployment \
    --deployment green \
    --name gateway



