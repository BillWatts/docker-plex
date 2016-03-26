# Docker Plex
Simple Docker container for running [Plex Media Server](http://plex.tv)

Build docker image
```
git clone git@github.com:BillWatts/docker-plex.git
cd docker-plex
docker build -t plex .
```
Alternatively you can pull the image from Dockerhub
```
docker pull billwatts/plex
```

Running the Docker image
```
docker run -d -v /movies:/media/movies -v /tv:/media/tv -p 32400:32400 plex
```
Alternatively you can run via Docker Compose
```
docker-compose up -d
```
