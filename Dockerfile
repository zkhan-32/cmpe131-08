# Step 1: Specify the base image
FROM node:20.18-alpine

# Update base OS packages
RUN apk update && apk upgrade --no-cache

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm ci --only=production

# Copy app source code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the app
CMD [ "node", "app.js" ]

