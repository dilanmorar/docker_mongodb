# docker nodejs app

Using docker to create an image and container for the mongodb to run on.

## running the app

to build an image:
```
docker build . -t mongodb
```
to run image:
```
docker run -d --name mongodb -p 27017:27017 mongodb
```
to stop running use container id which can be found via `docker ps`:
```
docker stop mongodb
```
to remove container
```
docker rm mongodb
```
