# Use Node.js base image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Expose port
EXPOSE 8080

# Start app
CMD ["node", "index.js"]
