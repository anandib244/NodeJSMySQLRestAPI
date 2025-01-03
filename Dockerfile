# Create image based on the official Node image from dockerhub
FROM node:lts-buster
 
# Create app directory
WORKDIR /usr/src/app
 
# Copy dependency definitions
COPY package.json ./package.json
 
# Install dependencies
RUN npm ci
RUN 
 
# Get all the code needed to run the app
COPY . .
 
# Expose the port the app runs in
EXPOSE 3000
 
# Serve the app
CMD ["npm", "start"]
