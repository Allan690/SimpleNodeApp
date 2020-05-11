# Use the node 13.12 alpine image from dockerhub
FROM node:13.12-alpine

# Tag the image
LABEL application="sample-node-app"

# set variables to use
ENV TERM=xterm-256color

# Create the usr/app directory incase it doesn't exist
# and set it as the working directory
RUN mkdir -p /usr/app
WORKDIR /usr/app

# Copy files or folders from source to the dest path in the image's filesystem.
COPY package.json /usr/app/
COPY . /usr/app/
# run this command
RUN yarn install
EXPOSE 5000
CMD yarn start
