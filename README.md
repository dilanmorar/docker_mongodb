# Docker mongodb3.6

Using docker to create an image and container for the mongodb to run on.

## Docker

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and deploy it as one package.

## Dockerfile

A dockerfile is a script with various commands and arguements listed successively to automatically perform actions on a base image to create a new one. In this case we used an existing mongo image with version 3.6.18 on an xenial base image and replace the mongod.conf.


## Running the app

to build an image:
```
docker build . -t mongodb3.6
```
to run image:
```
docker run -d --name mongodb3.6 -p 27017:27017 mongodb3.6
```
to stop running container:
```
docker stop mongodb3.6
```
to remove container
```
docker rm mongodb3.6
```

## Docker Hub

Docker Hub is a cloud-based repository in which you can create, test, store and distribute container images. We can use this to create our own repository for this Hackerank API.

### Using Docker Hub

The first thing you need to do is to create a Docker Hub account, and then create a repository and give it a name.

Once the container is running (the 'How to run API') you can push the image to the repository you created.

Then need to commit the project:

`docker commit -m 'commit message' <image_name> <username/repository_name>`

Push the project to Docker Hub:

`docker push <username/repository_name>`

My repository on Docker Hub: https://hub.docker.com/repository/docker/dilanmorar/mongodb3.6
