# Use a specific slim version for a smaller image size
FROM node:20-slim

# Set working directory
WORKDIR /app

# Copy package files first to take advantage of Docker layer caching
COPY package*.json ./

# Install production dependencies only
RUN npm install --omit=dev

# Copy the rest of the application code
COPY . .

# Use the non-root "node" user for security
USER node

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["node", "src/index.js"]
