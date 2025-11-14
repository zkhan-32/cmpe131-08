# Step 1: Specify the base image
FROM node:20.18-alpine

# Update OS packages
RUN apk update && apk upgrade --no-cache

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy app source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the app
CMD [ "node", "app.js" ]

