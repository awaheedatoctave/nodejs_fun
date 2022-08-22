FROM node:16.13.2-alpine

RUN apk add --no-cache tzdata gettext
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
RUN npm install
EXPOSE 3000
ENTRYPOINT ["sh","./docker-entrypoint.sh"]