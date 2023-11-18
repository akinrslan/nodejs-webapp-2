# Base Image

FROM node:19.9.0-alpine3.18

# Set the working Directory
WORKDIR /app

# Copy Package.json

COPY package*.json ./

# Install Dependencies

RUN npm install

# Copy source code to the container work directory

COPY . .

# Expose Port

EXPOSE 3000

# Entry for CMD 

CMD [ "node", "server.js" ]
