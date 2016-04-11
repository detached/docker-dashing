# docker-dashing
Ship your dashing as docker image

This repository is meant as template to provide you everything to dockerize your dashing project.

1. clone this repository
2. place your dashing files to the `dashboard` folder or create a new `dashing new dashboard`
3. run `docker build -t mydashing .`

To startup your application run

    docker run -p 80:8080 mydashing

The dockerfile uses the official ruby:alpine base image to be extremly small.
The dashing process will be executed as dashing user, not as root.

To change the port dashing binds to, start the container with additional arguments:

    docker run -p 80:6666 mydashing start -p 6666
