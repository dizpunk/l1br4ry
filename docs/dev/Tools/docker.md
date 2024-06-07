# [Docker](https://docs.docker.com/)

## How to manage containers
__Start__ a container
```
docker run IMAGE[:TAG]
```

Start a container in __detached mode__
```
docker run -d IMAGE[:TAG]
```

Start a container in __interactive mode__
```
docker run -i IMAGE[:TAG]
```

Start a container in __interactive mode__ with a __pseudo-tty__
```
docker run -it IMAGE[:TAG]
```

Start a container with an __environmental variable__
```
docker run -e VARIABLE=VALUE IMAGE[:TAG]
```

__Attach__ to a running container
```
docker attach ID
docker attach NAME
```

__Append__ a command to a container
```
docker run CONTAINER COMMAND
```

__Execute a command__ in a container
```
docker exec ID COMMAND
docker exec NAME COMMAND
```

__List__ containers
```
docker ps
docker ps -a (to list all containers)
docker container ls
```

__Inspect__ a container
```
docker inspect ID
docker inspect NAME
```

Inspect __container's logs__
```
docker logs ID
docker logs NAME
```

__Stop__ a container
```
docker stop ID
docker stop NAME
```

__Remove__ a container
```
docker rm ID
docker rm NAME
```

---
## How to manage images
__Build__ an image from a Dockerfile
```
docker build -f DOCKERFILE
docker build [OPTIONS] URL
docker build [OPTIONS] PATH
docker build PATH_TO_DOCKERFILE (file must be called "Dockerfile")
```

__Build and tag__ an image from a Dockerfile
```
docker build -t REPOSITORY/IMAGE[:TAG] DOCKERFILE
```

__List__ images
```
docker images
docker image ls
```

__Tag__ a new image
```
docker tag ID REPOSITORY/IMAGE/TAG
docker tag IMAGE REPOSITORY/IMAGE/TAG
docker tag IMAGE[:TAG] REPOSITORY/IMAGE/TAG
docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE<:TAG>
```

__Push__ an image to a registry (e.g. DockerHub)
```
docker push ACCOUNT/IMAGE[:TAG]
docker push REGISTRY:PORT/LOCATION/IMAGE[:TAG]
```

__Pull__ down an image
```
docker pull IMAGE[:TAG]
docker pull REGISTRY:PORT/LOCATION/IMAGE[:TAG]
```

__Remove__ an image
```
docker rmi NAME[:TAG]
```

---
## Network configuration
Running an __isolated container__
```
docker run IMAGE --network=none
```

Running a container associated with __Docker-host network__
```
docker run IMAGE --network=host
```

__Create__ a new __network__
```
docker network create [OPTIONS] NETWORK
```

Network __options__

| Name | Description |
|:-----|:------------|
|--attachable | Enable manual container attachment (API 1.25+)|
|--driver , -d|Driver to manage the Network (default: bridge)|
|--gateway|IPv4 or IPv6 Gateway for the master subnet|
|--internal|Restrict external access to the network|
|--ip-range|Allocate container ip from a sub-range|
|--ipv6|Enable IPv6 networking|
|--scope|Control the network's scope (API 1.30+)|
|--subnet|Subnet in CIDR format that represents a network segment|

__List__ networks
```
docker network ls
```

__Inspect__ a network
```
docker network inspect NETWORK
```

__Remove__ a network
```
docker network rm NETWORK
```

__PORT mapping__
```
docker run -p DOCKER_PORT:CONTAINER_PORT IMAGE[:TAG]
docker run -p DOCKER_PORT/PROTOCOL:CONTAINER_PORT/PROTOCOL IMAGE[:TAG]
docker run -p DOCKER_IP:DOCKER_PORT/PROTOCOL:CONTAINER_PORT/PROTOCOL IMAGE[:TAG]
```

---
## Storage configuration
__Create__ a volume
```
docker volume create NAME
```

__Remove__ a volume
```
docker volume rm NAME
```

__List__ volumes
```
docker volume ls
```

__Inspect__ a volume
```
docker volume inspect NAME
```

__Volume mapping__
```
docker run -v VOLUME:MOUNTPOINT:OPTIONS IMAGE[:TAG]
docker run -v LOCAL_PATH:MOUNTPOINT:OPTIONS IMAGE[:TAG]
```

---
## Dockerfile
Dockerfile format
```
# Comment
INSTRUCTION arguments
```

The __FROM__ instruction initializes a new build stage and sets the base image.
```
FROM [--platform=<platform>] image[:<tag>] [AS <name>]
```

The __RUN__ instruction will execute any commands in a new layer on top of the current image ad commit the results.
```
RUN <command>
RUN ["executable", "param1", "param2"]
```

The main purpose of a __CMD__ is to provide defaults for an executing container. These defaults can include an executable, or they can omit the executable, in which case you must specify an __ENTRYPOINT__ instruction as well.

There can only be one CMD instruction in a Dockerfile, so if you list more than one CMD then only the last CMD will take effect.
```
CMD <command> <param1> <param2>
CMD ["param1","param2"] (parameters to ENTRYPOINT)
CMD ["executable","param1","param2"]
```

The __LABEL__ instruction adds metadata to an image. A LABEL is a key-value pair. To include spaces within a LABEL value, use quotes and backslashes as you would in command-line parsing.
```
LABEL <key>=<value> <key>=<value> ...
```

The __ENV__ instruction sets the environment variable "key" to the value "value". This value will be in the environment for all subsequent instructions in the build stage and can be replaced inline in many as well.

The value will be interpreted for other environment variables, so quote characters will be removed if they are not escaped.
```
ENV <key>=<value> <key>=<value> ...
```

The __ADD__ instruction copies new files, directories or remote file URLs from "src" and adds them to the filesystem of the image at the path "dest".

Multiple "src"resources may be specified but if they are files or directories, their paths are interpreted as relative to the source of the context of the build.

The --chown feature is only supported on Dockerfiles used to build Linux containers.
```
ADD [--chown=<user>:<group>] <src>... <dest>
```

The __COPY__ instruction copies new files or directories from "src" and adds them to the filesystem of the container at the path "dest".

Multiple "src" resources may be specified but the paths of files and directories will be interpreted as relative to the source of the context of the build.

The --chown feature is only supported on Dockerfiles used to build Linux containers.
```
COPY [--chown=<user>:<group>] <src>... <dest>
```

An __ENTRYPOINT__ allows you to configure a container that will run as an executable.
```
ENTRYPOINT command param1 param2
ENTRYPOINT ["executable", "param1", "param2"]
```

The __VOLUME__ instruction creates a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers.

The value can be a JSON array, VOLUME ["/var/log/"], or a plain string with multiple arguments, such as VOLUME /var/log or VOLUME /var/log /var/db.

The docker run command initializes the newly created volume with any data that exists at the specified location within the base image.
```
VOLUME <path> <path> ...
VOLUME ["<path>"]
```

The __USER__ instruction sets the user name (or UID) and optionally the user group (or GID) to use when running the image and for any RUN, CMD and ENTRYPOINT instructions that follow it in the Dockerfile.
```
USER <UID>[:<GID>]
USER <user>[:<group>]
```

The __WORKDIR__ instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile. If the WORKDIR doesn’t exist, it will be created even if it’s not used in any subsequent Dockerfile instruction.

The WORKDIR instruction can be used multiple times in a Dockerfile. If a relative path is provided, it will be relative to the path of the previous WORKDIR instruction.
```
WORKDIR </path_to_workdir>
```

The __ARG__ instruction defines a variable that users can pass at build-time to the builder with the docker build command using the --build-arg varname="value" flag. If a user specifies a build argument that was not defined in the Dockerfile, the build outputs a warning.
```
ARG <name>[=<default value>]
```

The __ONBUILD__ instruction adds to the image a trigger instruction to be executed at a later time, when the image is used as the base for another build.

The trigger will be executed in the context of the downstream build, as if it had been inserted immediately after the FROM instruction in the downstream Dockerfile.
```
ONBUILD <INSTRUCTION>
```

The __STOPSIGNAL__ instruction sets the system call signal that will be sent to the container to exit.

This signal can be a signal name in the format SIGNAME, for instance SIGKILL, or an unsigned number that matches a position in the kernel’s syscall table, for instance 9. The default is SIGTERM if not defined.
```
STOPSIGNAL signal
```

The __HEALTHCHECK__ instruction tells Docker how to test a container to check that it is still working. This can detect cases such as a web server that is stuck in an infinite loop and unable to handle new connections, even though the server process is still running.

When a container has a healthcheck specified, it has a health status in addition to its normal status. This status is initially starting. Whenever a health check passes, it becomes healthy (whatever state it was previously in). After a certain number of consecutive failures, it becomes unhealthy.
```
HEALTHCHECK NONE (disable any healthcheck inherited)
HEALTHCHECK [OPTIONS] CMD command (check container health by running a command)
```
The options that can appear before CMD are:
- --retries=N (default: 3)
- --timeout=DURATION (default: 30s)
- --interval=DURATION (default: 30s)
- --start-period=DURATION (default: 0s)

The __SHELL__ instruction allows the default shell used for the shell form of commands to be overridden.

The default shell on Linux is ["/bin/sh", "-c"], and on Windows is ["cmd", "/S", "/C"]. The SHELL instruction must be written in JSON form in a Dockerfile.
```
SHELL ["executable", "parameters"]
```
