FROM node:14-buster AS build

# Set working directory and node user
WORKDIR /home/node/lowdefy

RUN chown node:node /home/node/lowdefy

USER node

# Copy app config, and change ownership of files to "node" user
COPY  --chown=node:node  . .

# Build the Lowdefy config using the Lowdefy CLI
RUN npx lowdefy@latest build

# Use the correct Lowdefy base image
FROM lowdefy/lowdefy:3.21.2

# Copy build output from build stage
COPY --from=build --chown=node:node /home/node/lowdefy/.lowdefy/build ./build

# Copy contents of public directory into image
COPY --chown=node:node ./public ./public

# Run the server on start
CMD ["node", "./dist/server.js"]
