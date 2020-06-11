help:
	@echo "\`make <target>\` where <target> is one of"
	@echo "  build			build the image"
	@echo "  bash			to make bash for the docker environment"
	@echo "  access		to make the environment fit by changing the modes"
	@echo "  upload		uploads to docker hub"

volume:
	@#make volume id=$PWD/source
	@test -d $(id) || mkdir -p $(id)
	@docker volume inspect debian_nasm_codes | grep debian_nasm_codes > /dev/null || docker volume create --driver local --opt type=none --opt device=$(id) --opt o=bind debian_nasm_codes
	@docker volume inspect debian_nasm_codes

build:
	@docker pull debian:stable-slim
	@docker-compose --project-name debian build

bash:
	@docker-compose --project-name debian run --rm --name nasmc nasm_compiler

access:
	@docker exec -u root nasmc chmod 777 .

upload:
	@docker login
	@docker tag debian_nasm_compiler:latest ichux/debian_nasm:latest
	@docker push ichux/debian_nasm:latest