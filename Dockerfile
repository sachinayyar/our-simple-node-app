FROM node:alpine3.10
ADD package.json /opt/app-root/src/package.json
RUN npn install
ADD . /opt/app-root/src
EXPOSE 8080
CMD ["node", "server.js"]
