# Use official Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Create a simple JavaScript file
COPY <<EOF hello.js
console.log("Hello from Node.js");
EOF

# HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1

# Command to run the script
CMD ["node", "hello.js"]
