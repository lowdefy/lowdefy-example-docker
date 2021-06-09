# Config in image

The Dockerfile in this folder builds a Docker image with the Lowdefy configuration built into the image. Different versions of the app can then be managed as different images.

To build an image, run:
```
docker build -t <tag> .
```
where `<tag>` is the tag for the image.


To run the app, run:
```
docker run -p 3000:3000 <tag>
```

Alternatively, the image can be built and run using Docker compose. The `docker-compose.yaml` file specifies the configuration.

To build the image, run:
```
docker compose build
```

To run the app, run:
```
docker compose up
```