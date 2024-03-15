# Docker Directory

This directory contains Dockerfiles and related files for building containerized applications.

## Contents

1. [Dockerfile](./Dockerfile): Dockerfile for building a sample application container.
2. [app.py](./app.py): Sample application code.
3. [nginx/](./nginx/): Directory containing Nginx Dockerfile and configuration file.

## Usage

### Building the Docker Images

1. Navigate to the Docker directory: `cd docker`.
2. Build the sample application container image:

```bash
docker build -t sample-app .
```

3. Build the Nginx server container image:

```bash
docker build -t nginx-server ./nginx
```
### Running the Docker Containers

4. Run the sample application container:

```bash
docker run -d --name sample-app-container sample-app
```

5. Run the Nginx server container:

```bash
docker run -d -p 80:80 --name nginx-server-container --link sample-app-container:app nginx-server
```

This will start the sample application container and the Nginx server container. The Nginx server will proxy requests to the sample application.