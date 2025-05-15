# Use a lightweight Node image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy everything
COPY . .

# Install dependencies and build the frontend
RUN npm install && npm run build

# Use a simple static server to serve the build
EXPOSE 80
CMD ["npx", "serve", "dist", "-l", "80"]
