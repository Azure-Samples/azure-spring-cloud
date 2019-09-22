#!/usr/bin/env bash

# Deploy gateway app

echo "az spring-cloud app deploy --name gateway \\
    --jar-path \${GATEWAY_JAR} \\
    --env CONFIG_SERVER_URI=\${CONFIG_SERVER_URI}"

az spring-cloud app deploy --name gateway \
    --jar-path ${GATEWAY_JAR} \
    --env CONFIG_SERVER_URI=${CONFIG_SERVER_URI}

read -n 1

 Deploy account-service app

echo "az spring-cloud app deploy --name account-service \\
    --jar-path \${ACCOUNT_SERVICE_JAR} \\
    --env CONFIG_SERVER_URI=\${CONFIG_SERVER_URI} MONGODB_DATABASE=\${MONGODB_DATABASE} \\
          MONGODB_URI=\${MONGODB_URI} \\
          RABBITMQ_HOST=\${RABBITMQ_HOST} \\
          RABBITMQ_PORT=\${RABBITMQ_PORT} \\
          RABBITMQ_USERNAME=\${RABBITMQ_USERNAME} \\
          RABBITMQ_PASSWORD=\${RABBITMQ_PASSWORD}"

az spring-cloud app deploy --name account-service \
    --jar-path ${ACCOUNT_SERVICE_JAR} \
    --env CONFIG_SERVER_URI=${CONFIG_SERVER_URI} MONGODB_DATABASE=${MONGODB_DATABASE} \
          MONGODB_URI=${MONGODB_URI} \
          RABBITMQ_HOST=${RABBITMQ_HOST} \
          RABBITMQ_PORT=${RABBITMQ_PORT} \
          RABBITMQ_USERNAME=${RABBITMQ_USERNAME} \
          RABBITMQ_PASSWORD=${RABBITMQ_PASSWORD}

read -n 1

# Deploy auth-service app

echo "az spring-cloud app deploy --name auth-service \\
    --jar-path \${AUTH_SERVICE_JAR} \\
    --env CONFIG_SERVER_URI=\${CONFIG_SERVER_URI} MONGODB_DATABASE=\${MONGODB_DATABASE} \\
          MONGODB_URI=\${MONGODB_URI}"

az spring-cloud app deploy --name auth-service \
    --jar-path ${AUTH_SERVICE_JAR} \
    --env CONFIG_SERVER_URI=${CONFIG_SERVER_URI} MONGODB_DATABASE=${MONGODB_DATABASE} \
          MONGODB_URI=${MONGODB_URI}

read -n 1