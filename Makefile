DEV_CMD=docker compose -f ./wordpress/docker-compose.yml

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
	${DEV_CMD} down --volumes

view:
	${DEV_CMD} ps

pull:
	${DEV_CMD} pull