# docker nodejs app

Using docker to create an image and container for the mongodb to run on.

## running the app

to build an image:
```
docker build . -t mongodb
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
