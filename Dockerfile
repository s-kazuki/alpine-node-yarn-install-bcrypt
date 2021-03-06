FROM skazuki/alpine-node

LABEL maintainer="S-Kazuki<contact@revoneo.com>"

ENV APP_ROOT=/node

WORKDIR $APP_ROOT

RUN apk update \
  && apk add make g++ python # for bcrypt

ONBUILD COPY package.json ${APP_ROOT}/
ONBUILD COPY yarn.lock ${APP_ROOT}/

ONBUILD RUN yarn install --frozen-lockfile --ignore-optional

CMD ["yarn", "start"]
