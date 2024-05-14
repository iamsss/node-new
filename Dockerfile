FROM node:22-alpine3.18

RUN apk add --no-cache openjdk11
RUN apk add --no-cache git

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
