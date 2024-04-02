# Katas
A very important skill to improve our skills as developer is to perform **Code Katas**. The main objective of a Code Kata is really focused to sharpen and **not** to solve 
the programming challenge.

The current repository contains source code and test code to make it easier for the participants to do a kata.

# Getting started
There are several ways to start working with this repository. 

## Installing the needed environment locally ##
One way is to check out this repository and follow the instructions provided in the related **README** file. This might lead to the situation that you have to install the development environment locally:

- For tests written in **Java** take a look [here](https://github.com/jensen-und-komplizen/csd_kata_skeleton/tree/main/java)
- For tests written in **JavaScript** take a look [here](https://github.com/jensen-und-komplizen/csd_kata_skeleton/tree/main/javascript)
- For tests written in **Python** take a look [here](https://github.com/jensen-und-komplizen/csd_kata_skeleton/tree/main/python)
- For tests written in **PHP** take a look [here](https://github.com/jensen-und-komplizen/csd_kata_skeleton/tree/main/php)

## Using a virtual development environment by installing Docker only ##
Another way is to use the **Dockerfile** provided in this repository. That will prevent you from installing different development environments locally through providing a **[Docker](https://www.docker.com/)** container which has all necessary tools in it.

### Getting started with Docker ###
In order to get started with **Docker** you might want to check out the [*official* documentation](https://www.docker.com/get-started/). It will lead to the situation that you have to install docker. You can check if **Docker** is installed by opening the terminal and executing the following command

`docker -v`

Now you should see something like

`Docker version 24.0.6, build ed223bc`

In order to be able to create a Docker image you need to clone this repository to your machine. This could be done using the terminal

`git clone https://github.com/jensen-und-komplizen/csd_kata_skeleton.git`

After you're done cloning you should see a directory including the following content

```
./csd_kata_skeleton/
   |__ java/
   |     |__ <java source etc.>
   |__ javascript/
   |     |__ <javascript source etc.>
   |__ php/
   |     |__ <php source etc.>
   |__ python/
   |     |__ <python source etc.>
   |__ Dockerfile
   |__ README.md
   |__ .gitignore
```

The next step would be to create a local image from the dockerfile provided. On the terminal you could do

`docker build . -t csd_kata_skeleton`

The result should look like

```
[+] Building 35.6s (26/26) FINISHED                                                      docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                     0.0s
 => => transferring dockerfile: 1.58kB                                                                   0.0s
 => resolve image config for docker.io/docker/dockerfile:1                                               0.9s
 => [auth] docker/dockerfile:pull token for registry-1.docker.io                                         0.0s
 => CACHED docker-image://docker.io/docker/dockerfile:1@sha256:ac85f380a63b13dfcefa89046420e1781752bab2  0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04                                          0.0s
 => [internal] load .dockerignore                                                                        0.0s
 => => transferring context: 2B                                                                          0.0s
 => [ 1/18] FROM docker.io/library/ubuntu:22.04                                                          0.0s
 => [internal] load build context                                                                        0.1s
 => => transferring context: 382.07kB                                                                    0.1s
 => CACHED [ 2/18] RUN apt update && apt upgrade -y                                                      0.0s
 => CACHED [ 3/18] RUN apt install curl git zip unzip python3 openjdk-21-jdk openjdk-21-jre maven -y     0.0s
 => CACHED [ 4/18] RUN bash -c 'echo JAVA_HOME=/usr/lib/jvm/openjdk-21 >> $HOME/.bashrc'                 0.0s
 => CACHED [ 5/18] RUN bash -c 'echo PATH=\$PATH:\$JAVA_HOME/bin >> $HOME/.bashrc'                       0.0s
 => CACHED [ 6/18] RUN apt-get update -y && apt-get install -y ca-certificates curl gnupg                0.0s
 => CACHED [ 7/18] RUN mkdir -p /etc/apt/keyrings                                                        0.0s
 => CACHED [ 8/18] RUN bash -c 'curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key |   0.0s
 => CACHED [ 9/18] RUN bash -c 'echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.node  0.0s
 => CACHED [10/18] RUN apt-get update -y && apt-get install nodejs -y                                    0.0s
 => [11/18] COPY . /csd_kata_skeleton/                                                                   0.2s
 => [12/18] WORKDIR /csd_kata_skeleton/php/                                                              0.0s
 => [13/18] RUN apt-get install php-cli php-dom php-json php-mbstring composer -y                        5.6s
 => [14/18] RUN composer update                                                                          4.1s 
 => [15/18] WORKDIR /csd_kata_skeleton/javascript/                                                       0.0s 
 => [16/18] RUN npm install jest -g                                                                      9.2s 
 => [17/18] WORKDIR /csd_kata_skeleton/                                                                  0.0s 
 => [18/18] RUN cd java; mvn install -DskipTests                                                        15.0s 
 => exporting to image                                                                                   0.4s 
 => => exporting layers                                                                                  0.4s 
 => => writing image sha256:d1f284332282fa5c6e4e4316abcce49d06189c0e4bc4dc193938987a0db5c97d             0.0s
 => => naming to docker.io/library/csd_kata_skeleton                                                     0.0s
```

If the build is successful you can start the container by running 

`docker run -it --rm -v ${PWD}:/csd_kata_skeleton csd_kata_skeleton`

This command will start the Docker container and link the current working directory to the container. It will open a terminal inside the container in a directoy called *csd_kata_skeleton*. This directory includes the linked sources (which you cloned from our repository). Following this approach will enable you to edit the files on your local machine and execute the tests inside the container.
