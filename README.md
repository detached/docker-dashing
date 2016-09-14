[![Docker Automated buil](https://img.shields.io/docker/automated/siweis/dashing.svg?maxAge=2592000)]()
[![](https://images.microbadger.com/badges/image/siweis/dashing.svg)](http://microbadger.com/images/siweis/dashing)
[![Docker Stars](https://img.shields.io/docker/stars/siweis/dashing.svg?maxAge=2592000)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/siweis/dashing.svg?maxAge=2592000)]()

# docker-dashing

Ship your [dashing](http://dashing.io/) as docker image!

The dockerfile uses the official [ruby:alpine](https://hub.docker.com/_/ruby/) base image to be extremly small.
The dashing process will be executed as dashing user, not as root.

Find this image on [hub.docker.com](https://hub.docker.com/r/siweis/dashing/).

# Usage

Use this image as base for your dashing image.

Create a Dockerfile in the root directory of your dashing project containing one simple line:

    FROM siweis/dashing

Thats it!

Two `ON BUILD` hooks will add all your files to the image and execute `bundle` on your Gemfile.

# Build

Run `docker build -t mydashing .` in your project folder.

# Run

To start your application run

    docker run -p 80:8080 mydashing

To change the port dashing binds to, start the container with additional arguments:

    docker run -p 80:6666 mydashing start -p 6666
