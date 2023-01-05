#Build node image from Node Docker Hub
FROM node:alpine3.10

#Make app directory in container
RUN mkdir /opt/app-root/src

#Identify working directory
WORKDIR /opt/app-root/src

#Copy package
COPY package.json /opt/app-root/src

#Install rpm packages from package.json
RUN npm install

#Copy over app to app folder
COPY . /opt/app-root/src

#Expose server at port ( accessible outside of container)
EXPOSE 8080 

#Start app 
CMD ["node", "server.js"]
