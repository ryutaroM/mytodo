.PHONY: build start_db dev test
build:
	cd db && docker-compose build

start_db:
	cd db && docker-compose up

dev:
	sqlx db create
	sqlx migrate run
	cargo watch -x run

test:
	cargo test
