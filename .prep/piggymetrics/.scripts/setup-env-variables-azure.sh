#!/usr/bin/env bash

# ====== Piggy Metrics Azure Coordinates
export RESOURCE_GROUP=INSERT-your-resource-group-name
export REGION=eastus
export SPRING_CLOUD_SERVICE=INSERT-your-spring-cloud-service-name

# ====== Piggy Metrics Environment Variables
export CONFIG_SERVER_URI=http://config:8888

# ====== Some fake passwords
export ACCOUNT_SERVICE_PASSWORD=XUoJBrTtqXBonU5zMVzSUtrLPKRQztLUQE4poDoIR1QdcDfGgnGgJO5wbFC7xCEL
export NOTIFICATION_SERVICE_PASSWORD=XUoJBrTtqXBonU5zMVzSUtrLPKRQztLUQE4poDoIR1QdcDfGgnGgJO5wbFC7xCEL
export STATISTICS_SERVICE_PASSWORD=XUoJBrTtqXBonU5zMVzSUtrLPKRQztLUQE4poDoIR1QdcDfGgnGgJO5wbFC7xCEL

export SMTP_USER=dev-user
export SMTP_PASSWORD=dev-password

# ====== Piggy Metrics Project JAR coordinates
export ACCOUNT_SERVICE_JAR=account-service/target/account-service.jar
export AUTH_SERVICE_JAR=auth-service/target/auth-service.jar
export GATEWAY_JAR=gateway/target/gateway.jar
export NOTIFICATION_SERVICE_JAR=notification-service/target/notification-service.jar
export STATISTICS_SERVICE_JAR=statistics-service/target/statistics-service.jar
export TURBINE_STREAM_SERVICE_JAR=turbine-stream-service/target/turbine-stream-service.jar
export MONITORING_JAR=monitoring/target/monitoring.jar

## ===== Mongo DB
export MONGODB_DATABASE=INSERT-your-mongodb-database-name
export MONGODB_USER=INSERT-your-cosmosdb-account-name
export MONGODB_URI="INSERT-your-mongodb-connection-string"
export MONGODB_RESOURCE_ID=INSERT-your-mongodb-resource-id

## ===== Rabbit MQ
export RABBITMQ_RESOURCE_GROUP=rabbitmq
export VM_NAME=rabbitmq
export ADMIN_USERNAME=selvasingh

# Rabbit MQ
export RABBITMQ_HOST=INSERT-your-rabbitmq-host-public-ip-address
export RABBITMQ_PORT=5672
export RABBITMQ_USERNAME=INSERT-your-rabbitmq-username
export RABBITMQ_PASSWORD=INSERT-your-rabbitmq-password