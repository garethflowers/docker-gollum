# Gollum Server

A simple [Gollum](https://github.com/gollum/gollum) server.

## How to use this image

### Start an Gollum Server instance

To start a container use the following:

```sh
docker run \
	--name my-gollum-server \
	--detach \
	--publish 4567 \
	garethflowers/gollum
```

## License

-   This image is released under the
    [MIT License](https://raw.githubusercontent.com/garethflowers/docker-gollum/main/LICENSE).
