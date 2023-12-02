# syntax=docker/dockerfile:1

# Datei Dockerfile
FROM ubuntu:22.04
LABEL maintainer = "bjoern@jensen-und-komplizen.de"

# Preparing the system
RUN apt update && apt upgrade -y && apt autoremove -y

# Installing some necessary tools in order to be able to get the test system up and running
RUN apt install curl git zip unzip python3 openjdk-21-jdk openjdk-21-jre maven -y
RUN bash -c 'echo JAVA_HOME=/usr/lib/jvm/openjdk-21 >> $HOME/.bashrc'
RUN bash -c 'echo PATH=\$PATH:\$JAVA_HOME/bin >> $HOME/.bashrc'

# Insallng Node.js in order to execute JavaScript
ARG NODE_MAJOR=21

RUN apt-get update -y && apt-get install -y ca-certificates curl gnupg
RUN mkdir -p /etc/apt/keyrings
RUN bash -c 'curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg'
RUN bash -c 'echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list'
RUN apt-get update -y && apt-get install nodejs -y

# Setting up JavaScript test environment
WORKDIR /csd_kata_skeleton/javascript/
RUN npm install jest -g

# Linking the current workdirectory
COPY . /csd_kata_skeleton/
WORKDIR /csd_kata_skeleton/
RUN cd java; mvn install -DskipTests
