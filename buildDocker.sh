#!/bin/bash
tag=latest
imageName=bytecoin-fullnode
docker build -f Dockerfile -t rafalsladek/$imageName:$tag .
#docker push rafalsladek/$imageName:$tag
#docker run -it --rm  -v $(PWD)/.bytecoin:/root/.bytecoin -p 8080:8080 -p 8081:8081 rafalsladek/$imageName /bin/bash