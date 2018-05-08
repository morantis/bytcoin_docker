# bytecoin-docker
bytecoin daemon docker image


## How to run the container
```
docker run -d  -v ~/.bytecoin:/root/.bytecoin --restart unless-stopped -p 8080:8080 -p 8081:8081 --name bytecoin-fullnode rafalsladek/bytecoin-fullnode 
```

## How to see logs of running the container
```
docker logs bytecoin-fullnode --follow
```
