container_version := latest
container_name := noddy

build:
	@clear
	@echo "\n\nNote: If the build fails with an error like \"cp: cannot create regular file '/usr/local/bin/noddy': Permission denied\"  - try to run \"sudo make build\"\n\n"
	@docker build --tag ${container_name}:${container_version} .
	@cp noddy_alias /usr/local/bin/noddy
	@chmod +x /usr/local/bin/noddy
	@echo "noddy alias configured"
	@echo "To view noddy options run : noddy usage"

setup: build
