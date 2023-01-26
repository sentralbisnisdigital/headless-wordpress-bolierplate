DEV_CMD=docker compose
PROD_CMD=docker compose -f ./docker-compose.prod.yml --env-file .env.prod

run:
	${DEV_CMD} up -d

run-debug:
	${DEV_CMD} up

run-build:
	${DEV_CMD} up --build -d

stop:
	${DEV_CMD} stop

remove:
	${DEV_CMD} down

remove-all:
	${DEV_CMD} down --volumes --remove-orphans

view:
	${DEV_CMD} ps

prod-run:
	${PROD_CMD} up -d

prod-rebuild:
	${PROD_CMD} up -d --build

prod-stop:
	${PROD_CMD} stop

prod-remove:
	${PROD_CMD} down

prod-view:
	${PROD_CMD} ps