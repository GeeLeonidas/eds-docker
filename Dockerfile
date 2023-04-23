from alpine:latest as base

RUN apk update && apk upgrade

from base as prep

RUN apk add git wget
RUN git clone --depth=1 https://github.com/ErickHenrique2000/backend_engenharia_software /repo
WORKDIR /repo

from base as final

RUN apk add npm
COPY --from=prep /repo /usr/share/eds
WORKDIR /usr/share/eds
RUN npm i

ENTRYPOINT ["/usr/bin/npm", "run", "dev"]
