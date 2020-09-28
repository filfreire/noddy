FROM node:current-alpine3.12

RUN apk update && apk add --no-cache jq bash curl wget coreutils vim tmux

WORKDIR /var/src

RUN npm install uuid atob btoa chai crypto-js lodash

CMD ["/bin/bash"]