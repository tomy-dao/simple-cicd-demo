FROM node:23.9.0-alpine3.21

RUN mkdir /app
WORKDIR /app

COPY . /app

RUN yarn install

CMD ["npm", "start"]