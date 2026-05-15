setup:
	docker compose run --rm app make setup

up-exist:
	docker compose up --abort-on-container-exist

start:
	docker compose up

down:
	docker compose down
	
test:
	docker compose -f docker-compose.yml up --abort-on-container-exit

dev:
	npm run dev

up-development:
	docker run -p 8080:8080 -e NODE_ENV=development ramzaii/devops-for-developers-project-74 make dev

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit
	