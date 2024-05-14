FROM node:22-alpine3.18

#INSTALL JAVA JDK
RUN apk add --no-cache openjdk11

#INSTALL GIT
RUN apk add --no-cache git

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

# Install PM2 globally
RUN npm install pm2 -g

CMD ["pm2-runtime", "npm", "--", "start"]
