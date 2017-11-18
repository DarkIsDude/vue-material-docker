FROM node:8

LABEL maintainer="edouard.comtet@gmail.com"
LABEL version="0.0.1"

# Install package
RUN apt-get update
RUN apt-get update && apt-get -y autoremove && apt-get clean

# Disable progress for npm
ENV NPM_CONFIG_PROGRESS false
ENV NPM_CONFIG_SPIN false

# Prepare and expose
RUN mkdir /app
COPY . /app/
WORKDIR /app
EXPOSE 3000

ENTRYPOINT bash

