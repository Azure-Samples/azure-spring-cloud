# Local development environment
export CONFIG_SERVER_URI=http://localhost:8888
export CONFIG_SERVICE_PASSWORD=some-password
export NOTIFICATION_SERVICE_PASSWORD=some-password
export STATISTICS_SERVICE_PASSWORD=some-password
export SMTP_USER=dev-user
export SMTP_PASSWORD=dev-password

# MongoDB in Azure
export MONGODB_HOST=INSERT-your-mongodb-host-name
export MONGODB_PORT=10255
export MONGODB_DATABASE=INSERT-your-mongodb-database-name
export MONGODB_USER=INSERT-your-cosmosdb-account-name
export MONGODB_PASSWORD=INSERT-your-mongodb-password
export MONGODB_URI="insert-your-mongodb-connection-string"

# Auth Service
# Some fake password
export ACCOUNT_SERVICE_PASSWORD=XUoJBrTtqXBonU5zMVzSUtrLPKRQztLUQE4poDoIR1QdcDfGgnGgJO5wbFC7xCEL

# RabbitMQ in Azure
export RABBITMQ_HOST=INSERT-your-rabbitmq-host-public-ip-address
export RABBITMQ_PORT=5672
export RABBITMQ_USERNAME=INSERT-your-rabbitmq-username
export RABBITMQ_PASSWORD=INSERT-your-rabbitmq-password