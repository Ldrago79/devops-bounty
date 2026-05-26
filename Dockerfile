# Use a lightweight version of Node.js
FROM node:18-alpine

# Tell Docker to create a working folder inside the container
WORKDIR /usr/src/app

# Copy the package.json file first
COPY package*.json ./

# Install the app dependencies
RUN npm ci --only=production

# Copy the rest of our application files (like server.js)
COPY . .

# Tell the container to expose port 3000
EXPOSE 3000

# The command to start the app
CMD ["npm", "start"]