# Use a lightweight official Node image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only package files first (for caching)
COPY package*.json ./

# Install dependencies (none heavy here)
RUN npm install --only=production

# Copy the rest of the source
COPY . .

# The port your app listens on
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]
