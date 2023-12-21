FROM node:14 as builder

# Create app directory
WORKDIR /usr/app/

# Bundle app source
COPY . /usr/app

# Install app dependencies
RUN npm install

# Start the server using the production build
CMD [ "npm", "run", "develop"]
