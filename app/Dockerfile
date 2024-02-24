FROM josanchezva/to-do-app:latest as development
RUN apk add --no-cache python2 g++ make
RUN yarn install
WORKDIR /app 
CMD ["node", "src/index.js"]
EXPOSE 3000

FROM josanchezva/to-do-app:latest as production
RUN apk add --no-cache python2 g++ make
WORKDIR /app 
CMD ["node", "src/index.js"]
EXPOSE 3000