FROM node:14

# Create app directory
WORKDIR /home/israel-gigb/src

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
