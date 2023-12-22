# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 (assuming your Node.js application listens on this port)
EXPOSE 8089

# Define the command to run your Node.js application
CMD ["node", "server.js"]
