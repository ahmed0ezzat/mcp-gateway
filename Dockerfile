
# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app
COPY . .

# Expose port (check repo for correct port, assume 3000)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
