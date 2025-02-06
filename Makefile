.PHONY: all
all: update down up

.PHONY: update
update:
	@echo "Update"
	git pull
	git submodule update --remote

.PHONY: up
up:
	@echo "Build & Up"
	docker compose -p pgpooladmin-cloud -f docker-compose-shared.yml up -d --build

.PHONY: down
down:
	@echo "Down"
	docker compose -p pgpooladmin-cloud down