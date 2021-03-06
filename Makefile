setup:
	docker network create caddy

caddy-start:
	docker-compose -f docker-compose.caddy.yml up -d

caddy-down: 
	docker-comopse -f docker-compose.caddy.yml down

caddy-logs:
	docker-compose -f docker-compose.caddy.yml logs -f

caddy-pull:
	docker-compose -f docker-compose.caddy.yml pull

caddy-update: caddy-pull caddy-start

start:
	docker-compose up -d

down:
	docker-compose down

logs:
	docker-compose logs -f

pull:
	docker-compose pull
