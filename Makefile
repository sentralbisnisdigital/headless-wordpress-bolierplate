DEV_CMD=docker compose -f ./docker-compose.yml -f ./docker-compose.dev.yml
PROD_CMD=docker compose

dev:
	${DEV_CMD} up -d

build:
	${DEV_CMD} up --build -d

stop:
	${DEV_CMD} stop

rm:
	${DEV_CMD} down --remove-orphans

rm-all:
	${DEV_CMD} down --volumes --remove-orphans