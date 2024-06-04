# Use an official Node.js image as the base image
FROM node:20

# Create and change to the app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Set environment variables
ENV VITE_BACKEND_URL=${VITE_BACKEND_URL}

# Build the Next.js application
RUN npm run build

# Expose port 4000
EXPOSE 4000

# Start the application
CMD ["npm", "preview"]
