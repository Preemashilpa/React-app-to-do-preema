# Step 1: Use a base image node=20 is base image
FROM node:20

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json to /app
#COPY package*.json ./
COPY package*.json /app/

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application files into the container
COPY . .

# Step 6: Expose the necessary port
EXPOSE 80

# Step 7: Define the default command to run your app
CMD ["npm", "start"]
