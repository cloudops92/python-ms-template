# python-ms-template

![](https://github.com/mishah92/python-ms-template/workflows/python-ms-template-ci/badge.svg)

This is Python micro-service base template. This template allows to add your code and quickly build and deploy 
docker image simply. This template is very basic having integration of Django application as an example.

Basic knowledge of the [Gradle](https://gradle.org) and [Docker](https://www.docker.com) is 
require.

## Building and Generating docker image
We use the [Avast plugins](https://github.com/avast/gradle-docker-compose-plugin) 
that allows to config and manage docker images.

All configurations are present into the `configs/docker.gradle`

## Build
Below command will generate the docker image with name `python_ms_template:latest`.

###### Build the Application
~~~~
$ ./gradlew build
~~~~

###### Build the docker image
~~~~
$ ./gradlew composeBuild
~~~~

###### Running Docker image
~~~~
$ ./gradlew composeUp
~~~~

## Communication

- **Email**: mishalshah92@gmail.com
