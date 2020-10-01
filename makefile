container_version := latest
container_name := filfreire/noddy

setup_alias:
	@echo "\n\nNote: If the build fails with an error like \"cp: cannot create regular file '/usr/local/bin/noddy': Permission denied\"  - try to run \"sudo make build\"\n\n"
	@cp noddy_alias /usr/local/bin/noddy
	@chmod +x /usr/local/bin/noddy
	@echo "noddy alias configured"
	@echo "To view noddy options run : noddy usage"

pull:
	@clear
	@docker pull filfreire/noddy:latest

docker_compile:
	@clear
	@docker build --tag ${container_name}:${container_version} .


setup: pull setup_alias

build: docker_compile setup_alias

