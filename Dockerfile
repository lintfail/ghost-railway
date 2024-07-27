FROM node:20

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
COPY package*.json ./

# Install dependencies.
RUN yarn install

# Copy local code to the container image.
COPY . .

# Run the application.
CMD ["yarn", "start"]
