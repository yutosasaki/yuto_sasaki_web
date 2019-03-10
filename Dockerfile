FROM node:lts-alpine as build-stage
WORKDIR /app

RUN npm install -g @vue/cli
COPY src .
RUN yarn install

EXPOSE 8080
CMD ["yarn", "serve"]
