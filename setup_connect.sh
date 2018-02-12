curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" 172.17.0.1:8083/connectors/ -d '{ "name": "fundadmin-connector", "config": { "connector.class": "io.debezium.connector.mysql.MySqlConnector", "tasks.max": "1", "database.hostname": "mysql", "database.port": "3306", "database.user": "debezium", "database.password": "dbz", "database.server.id": "184054", "database.server.name": "dbserver1", "database.whitelist": "fundAdminService","database.history.kafka.bootstrap.servers": "kafka:9092", "database.history.kafka.topic": "domaineventhistory.fundAdminService" } }'