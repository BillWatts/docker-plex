# Docker Plex
Simple docker container for [Plex Media Server](http://plex.tv).


### Getting The Docker Image

To obtain the docker image for Plex Media Server choose one of the following options:

- Build docker image:

  ```
  git clone git@github.com:BillWatts/docker-plex.git
  cd docker-plex
  docker build -t plex .
  ```

- Pull image from Dockerhub:

  ```
  docker pull billwatts/plex
  ```

### Running The Docker Image

To get your Docker image up and running choose one of the following options:

- Via `docker`:
   ```
   docker run -d -v /path-to-data:/root/Library/Application\ Support/Plex\ Media\ Server -v /path-to-movies:/media/movies -v /path-to-tv:/media/tv -p 32400:32400 plex
   ```

- Via `docker-compose`:
  ```
  docker-compose up -d
  ```

### Configuration

#### Environment Variables
| Variable Name            | Values                 | Behaviour                                                                            | Default value   |
| ----------------------:  | :--------------------: | :----------------------------------------------------------------------------------- | :-------------: |
|    DOCKER_PLEX_CONFIG    |  String     | Path to the configuration on the the local machine (`docker-compose` only)                      | Unset           |
|    DOCKER_PLEX_VERSION   |  String     | Specifies the version of Plex you wish to deploy. Defaults to latest Plex Pass version.         | Latest Version  |
| DOCKER_PLEX_MOVIE_MEDIA  |  String     | Path to movie media on the the local machine (`docker-compose` only)                            | Unset           |
|   DOCKER_PLEX_TV_MEDIA   |  String     | Path to movie tv on the the local machine (`docker-compose` only)                               | Unset           |

To use environment variables with `Docker` you can do so by using the following:

- Via `docker run`:
  ```
  docker run -e DOCKER_PLEX_VERSION=1.1.3.2700-6f64a8d ... billwatts/plex
  ```

  or

  ```
  echo "DOCKER_PLEX_VERSION=1.1.3.2700-6f64a8d" >> path/to/docker-plex/.env
  docker run --envfile=./.env ... billwatts/plex
  ```

- Via `docker-compose`:
  ```
  echo "DOCKER_PLEX_VERSION=1.1.3.2700-6f64a8d" >> path/to/docker-compose/.env
  docker-compose up
  ```
