# Config in volume

```
lowdefy build
```

```
docker run \
  -p 443:443 \
  --name lowdefy \
  --mount type=volume,source=lowdefy-build,destination=/home/node/lowdefy/volumes/build \
  -e LOWDEFY_SERVER_CONFIGURATION_PATH=/home/node/lowdefy/volumes/build \
  <tag-name>
```

```
docker cp ./.lowdefy/build lowdefy:/home/node/lowdefy/volumes
```