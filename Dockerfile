# Use Node base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the code
COPY . .

# Expose port and start app
EXPOSE 4000
CMD ["npm", "start"]
