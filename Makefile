help:
	@echo "\`make <target>\` where <target> is one of"
	@echo "  build			build the image"
	@echo "  bash			to make bash for the docker environment"
	@echo "  grantaccess		to make the environment fit by changing the modes"
	@echo "  upload		uploads to docker hub"

build:
	@docker-compose --project-name debian up --build -d

bash:
	@docker-compose --project-name debian run --rm --name nasmc nasm

grantaccess:
	@#docker-compose --project-name debian exec nasm cp -R source source
	@docker-compose --project-name debian exec nasm chgrp docker source
	@docker-compose --project-name debian exec nasm chmod 777 source
	@#docker exec -u root nasmc chmod 777 .

upload:
	@docker login
	@docker tag debian_nasm:latest ichux/debian_nasm:latest
	@docker push ichux/debian_nasm:latest