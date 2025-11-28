# Lightweight Node.js image
FROM node:18-alpine

WORKDIR /app

# Install backend service dependencies
COPY package.json ./
RUN npm install --production

# Copy the rest of the files
COPY . .

# Expose the API port
EXPOSE 3000

# Start service
CMD ["npm", "start"]