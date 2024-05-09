all: 
	migrate -source file://migrations/mysql \
	-database "${MYSQL_DSN}" up

all-docker: 
	ls -lR /app/migrations
	sleep 10
	./.bin/migrate -source file:///app/migrations/mysql -database "${MYSQL_DSN}" up

all-kube: all-docker
	sleep infinity && wait

# make NAME="test" create  - создание файлов миграции
create: 
	migrate create -dir migrations/mysql -ext sql ${NAME}

migrate:	
	go install -tags 'mysql' github.com/golang-migrate/migrate/v4/cmd/migrate@latest

