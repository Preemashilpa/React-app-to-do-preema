# Step 1: Use a base image
FROM node:20

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json to /app
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application files into the container
COPY . .

# Step 6: Expose the necessary port (adjust this according to your app's setup)
EXPOSE 80

# Step 7: Define the default command to run your app (adjust this for your app)
CMD ["npm", "start"]
