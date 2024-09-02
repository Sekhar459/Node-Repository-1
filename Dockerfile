# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the application will be listening on
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
