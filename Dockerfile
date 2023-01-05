FROM node:alpine3.10
RUN mkdir /opt/app-root/src
WORKDIR /opt/app-root/src
COPY package.json /opt/app-root/src
RUN npm install
COPY . /opt/app-root/src
EXPOSE 8080
CMD ["node", "server.js"]
