# Config in volume

```
docker run \
  -p 3000:3000 \
  --name lowdefy \
  --mount type=volume,source=lowdefy-build,destination=/home/node/lowdefy/build \
  --mount type=volume,source=lowdefy-public,destination=/home/node/lowdefy/public \
  lowdefy/lowdefy:3.17.0-alpha.3
```

```
npx lowdefy@latest build
```

```
docker cp ./.lowdefy/build lowdefy:/home/node/lowdefy
docker cp ./public lowdefy:/home/node/lowdefy
```

If the volumes are not mounted at the default build and public directories, the build and public directories can be specified using the `LOWDEFY_SERVER_BUILD_DIRECTORY` and `LOWDEFY_SERVER_PUBLIC_DIRECTORY` environment variables.

```
docker run \
  -p 3000:3000 \
  --name lowdefy \
  --mount type=volume,source=lowdefy-build,destination=/data/lowdefy/build \
  --mount type=volume,source=lowdefy-public,destination=/data/lowdefy/public \
  -e LOWDEFY_SERVER_BUILD_DIRECTORY=/data/lowdefy/build \
  -e LOWDEFY_SERVER_PUBLIC_DIRECTORY=/data/lowdefy/public \
  lowdefy/lowdefy:3.17.0-alpha.2
```

```
docker cp ./.lowdefy/build lowdefy:/lowdefy
docker cp ./public lowdefy:/lowdefy
```