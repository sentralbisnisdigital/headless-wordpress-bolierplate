run-dev:
	docker compose -f ./wordpress/docker-compose.yml up -d

run-debug:
	docker compose -f ./wordpress/docker-compose.yml up

run-build:
	docker compose -f ./wordpress/docker-compose.yml up --build -d

stop:
	docker compose -f ./wordpress/docker-compose.yml down

purge:
	docker compose -f ./wordpress/docker-compose.yml down --volumes

view:
	docker compose -f ./wordpress/docker-compose.yml ps