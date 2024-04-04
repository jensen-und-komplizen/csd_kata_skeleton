# syntax=docker/dockerfile:1

# Datei Dockerfile
FROM ubuntu:24.04
LABEL maintainer = "bjoern@jensen-und-komplizen.de"

# Preparing the system
RUN apt update && apt upgrade -y

# Installing some necessary tools in order to be able to get the test system up and running
RUN apt install curl git zip unzip python3 openjdk-21-jdk openjdk-21-jre maven -y
RUN bash -c 'echo JAVA_HOME=/usr/lib/jvm/openjdk-21 >> $HOME/.bashrc'
RUN bash -c 'echo PATH=\$PATH:\$JAVA_HOME/bin >> $HOME/.bashrc'

# Insallng Node.js in order to execute JavaScript
ARG NODE_MAJOR=21

# Installing Node.js
RUN apt-get update -y && apt-get install -y ca-certificates curl gnupg
RUN mkdir -p /etc/apt/keyrings
RUN bash -c 'curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg'
RUN bash -c 'echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list'
RUN apt-get update -y && apt-get install nodejs -y

# Copying the project into the container
COPY . /csd_kata_skeleton/

# PHP installation asks for a timezone, that is why we disable the interactive mode
ARG DEBIAN_FRONTEND=noninteractive

# Setting up PHP test environment
WORKDIR /csd_kata_skeleton/php/
# Installing PHP and Composer
RUN apt-get install php-cli php-dom php-json php-mbstring composer -y
# Installing the necessary dependencies
RUN composer update

# Setting up JavaScript test environment
WORKDIR /csd_kata_skeleton/javascript/
RUN npm install jest -g

# Linking the current workdirectory
WORKDIR /csd_kata_skeleton/
RUN cd java; mvn install -DskipTests

# Cleaning up the system
RUN apt autoremove -y