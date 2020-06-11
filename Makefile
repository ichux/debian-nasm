help:
	@echo "\`make <target>\` where <target> is one of"
	@echo "  clean			cleans the directory of all unwanted"
	@echo "  volume			make a volume necessary to test the application"
	@echo "  build			build the image"
	@echo "  bash			to make bash for the docker environment"
	@echo "  access		to make the environment fit by changing the modes"
	@echo "  upload		uploads to docker hub"

clean:
	@find . -name '__MACOSX' -type d -print0 | xargs -0 /bin/rm -rf '{}'
	@find . -name '__pycache__' -type d -print0 | xargs -0 /bin/rm -rf '{}'
	@find . -iname 'Thumbs.db' -delete
	@find . -iname '*.url' -delete
	@find . -iname '*.pyc' -delete
	@find . -iname '.DS_Store' -delete
	@find . -iname 'DS_Store' -delete

volume:
	@#make volume id=$PWD/source
	@test -d $(id) || mkdir -p $(id)
	@docker volume inspect debian_nasm_codes | grep debian_nasm_codes > /dev/null || docker volume create --driver local --opt type=none --opt device=$(id) --opt o=bind debian_nasm_codes
	@docker volume inspect debian_nasm_codes

build: clean
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