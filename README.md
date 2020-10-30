<img src="./img/noddy_blue_shirt.png" height="150px">

# noddy
docker-based wrapper for quick nodejs experiments based on alpine+node image

## Requirements
- [Docker](https://docs.docker.com/engine/install/) (known working versions: `19.03.12`)

## Local build and install
If you decide to clone the [repo](https://github.com/filfreire/noddy), you can first build the docker image:
```
make build
```

Then you should be able to open a `noddy` container with bash session
```
noddy run
```

> Note: Alternatively, you can use `make setup` and instead of doing the local docker build, you pull latest image from [Docker Hub](https://hub.docker.com/r/filfreire/noddy).

You can afterwards use `node` and `npm` or run any `.js` files on `src` folder (like `example.js`).

## Direct usage via container
If you don't wish to clone the repo, you can spin up a noddy container with:
```
docker run \
    --name noddy \
    -v $(pwd)/src:/var/src \
    --rm -ti \
    filfreire/noddy:latest \
    /bin/bash
```

## Available programs & tools:
You can use the following tools inside noddy:
- bash
- node
- npm
- vim
- tmux
- jq
- curl
- wget
- [coreutils](https://pkgs.alpinelinux.org/contents?file=&path=&name=coreutils)

## Contribute

This tiny project was done for personal use, and still needs some minor things to be properly finished. Feel free to open an issue or submit a pull-request!

You can run `make build` to build the image locally.

## Logo

[noddy](https://github.com/filfreire/noddy)'s logo was designed by Inês Freire ([@inestfreire](https://github.com/inestfreire))