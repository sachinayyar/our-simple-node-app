FROM node:alpine3.10
RUN mkdir /src
WORKDIR /src
COPY package.json /src
RUN npm install
COPY . /src
EXPOSE 8080
CMD ["node", "server.js"]
