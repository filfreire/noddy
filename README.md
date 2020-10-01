<img src="./img/noddy_blue_shirt.png" height="100px">

# noddy
docker-based wrapper for quick nodejs experiments based on alpine+node image

## Requirements
- [Docker](https://docs.docker.com/engine/install/) (known working versions: `19.03.12`)

## How to install

First, build the docker image:
```
make setup
```

## How to use
To open a `noddy` container with bash session
```
noddy run
```

You can afterwards use `node` and `npm` or run any `.js` files on `src` folder (like `example.js`).

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