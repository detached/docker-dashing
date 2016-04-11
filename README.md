# docker-dashing
Ship your dashing as docker image!

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

The dockerfile uses the official ruby:alpine base image to be extremly small.
The dashing process will be executed as dashing user, not as root.

To change the port dashing binds to, start the container with additional arguments:

    docker run -p 80:6666 mydashing start -p 6666
