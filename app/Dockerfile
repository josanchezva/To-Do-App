FROM node:12-alpine as development
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install
CMD ["node", "src/index.js"]
EXPOSE 3000

FROM node:12-alpine as release
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000