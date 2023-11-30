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
[+] Building 142.9s (25/25) FINISHED                                                                                                         docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                         0.0s
 => => transferring dockerfile: 1.76kB                                                                                                                       0.0s
 => [internal] load .dockerignore                                                                                                                            0.0s
 => => transferring context: 2B                                                                                                                              0.0s
 => resolve image config for docker.io/docker/dockerfile:1                                                                                                   1.8s
 => [auth] docker/dockerfile:pull token for registry-1.docker.io                                                                                             0.0s
 => CACHED docker-image://docker.io/docker/dockerfile:1@sha256:ac85f380a63b13dfcefa89046420e1781752bab202122f8f50032edf31be0021                              0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04                                                                                              1.2s
 => [auth] library/ubuntu:pull token for registry-1.docker.io                                                                                                0.0s
 => [ 1/16] FROM docker.io/library/ubuntu:22.04@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f                                      0.0s
 => [internal] load build context                                                                                                                            0.0s
 => => transferring context: 23.00kB                                                                                                                         0.0s
 => CACHED [ 2/16] RUN apt update && apt upgrade -y && apt autoremove -y                                                                                     0.0s
 => CACHED [ 3/16] RUN apt install curl git zip unzip nano -y                                                                                                0.0s
 => [ 4/16] COPY . /usr/src/csd_kata_skeleton/                                                                                                               0.0s
 => [ 5/16] WORKDIR /csd_kata_skeleton/                                                                                                                      0.0s
 => [ 6/16] RUN bash -c 'curl -s "https://get.sdkman.io" | bash'                                                                                             8.8s
 => [ 7/16] RUN bash -c 'source "$HOME/.sdkman/bin/sdkman-init.sh"     && sdk install java $JAVA_VERSION     && sdk install maven $MAVEN_VERSION'           84.2s
 => [ 8/16] RUN apt install python3 -y                                                                                                                       3.5s 
 => [ 9/16] RUN apt-get update -y                                                                                                                            2.0s 
 => [10/16] RUN apt-get install -y ca-certificates curl gnupg                                                                                                3.1s 
 => [11/16] RUN mkdir -p /etc/apt/keyrings                                                                                                                   0.3s 
 => [12/16] RUN bash -c 'curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg'           0.4s 
 => [13/16] RUN bash -c 'echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt  0.1s 
 => [14/16] RUN apt-get update -y                                                                                                                            1.1s 
 => [15/16] RUN apt-get install nodejs -y                                                                                                                    8.5s 
 => [16/16] RUN npm install --save-dev jest                                                                                                                 26.9s 
 => exporting to image                                                                                                                                       0.9s 
 => => exporting layers                                                                                                                                      0.9s 
 => => writing image sha256:254db3ebcbda123541b88a401248185a1629e535c1c5c8fecef7df0c5f80a6d0                                                                 0.0s 
 => => naming to docker.io/library/csd_kata_skeleton  
```

If the build is successful you can start the container by running 

`docker run -it --rm -v ${PWD}:/csd_kata_skeleton csd_kata_skeleton`

This command will start the Docker container and link the current working directory to the container. It will open a terminal inside the container in a directoy called *csd_kata_skeleton*. This directory includes the linked sources (which you cloned from our repository). Following this approach will enable you to edit the files on your local machine and execute the tests inside the container.
