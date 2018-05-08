#!/bin/bash
tag=latest
imageName=bytecoin-docker
docker build -f Dockerfile -t rafalsladek/$imageName:$tag .
#docker push rafalsladek/$imageName:$tag

# run container with bash
#docker run -it --rm  -v $(PWD)/.bytecoin:/root/.bytecoin -p 8080:8080 -p 8081:8081 rafalsladek/$imageName /bin/bash

# run container forever
#docker run -d -v $(PWD)/.bytecoin:/root/.bytecoin -p 8080:8080 -p 8081:8081 --name bytecoin-fullnode --restart unless-stopped rafalsladek/$imageName
