# Step 1: Use a Node.js base image
FROM node:20

# Step 2: Set working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json (if they exist)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of your app files
COPY . .

# Step 6: Expose the port your app runs on
EXPOSE 80

# Step 7: Start the application
CMD ["npm", "start"]

