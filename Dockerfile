FROM skazuki/alpine-node-yarn-install

LABEL maintainer="S-Kazuki<contact@revoneo.com>"

ENV APP_ROOT=/node

WORKDIR $APP_ROOT

RUN apk update \
  && apk add make g++ python # for bcrypt

CMD ["yarn", "start"]
