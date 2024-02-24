FROM node:12-alpine as development
RUN apk add --no-cache python2 g++ make
RUN yarn install
WORKDIR /app
CMD ["node", "index.js"]
EXPOSE 3000

FROM node:12-alpine as release
RUN apk add --no-cache python2 g++ make
WORKDIR /app 
CMD ["node", "index.js"]
EXPOSE 3000