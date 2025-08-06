# Use an official Node.js LTS image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose port 3000 (or your actual app port)
EXPOSE 3000

# Define the startup command
CMD ["node", "index.js"]

