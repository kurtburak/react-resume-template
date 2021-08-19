FROM node:lts-alpine3.14

WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn cache clean && yarn --update-checksums
COPY . ./
EXPOSE 8080
CMD ["yarn", "start"]