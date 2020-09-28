container_version := latest
container_name := noddy

build:
	@clear
	@docker build --tag ${container_name}:${container_version} .
	@cp noddy_alias /usr/local/bin/noddy
	@chmod +x /usr/local/bin/noddy
	@echo "noddy alias configured"
	@echo "To view noddy options run : noddy usage"

setup: build
