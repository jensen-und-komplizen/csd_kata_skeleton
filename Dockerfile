# syntax=docker/dockerfile:1

# Datei Dockerfile
FROM ubuntu:22.04
LABEL maintainer = "bjoern@jensen-und-komplizen.de"

# Preparing the system
RUN apt update && apt upgrade -y && apt autoremove -y

# Installing some necessary tools in order to be able to get the test system up and running
RUN apt install curl git zip unzip nano -y

# Linking the current workdirectory
COPY . /usr/src/csd_kata_skeleton/
WORKDIR /csd_kata_skeleton/

# Install sdkman in order to get Java and Maven installed
RUN bash -c 'curl -s "https://get.sdkman.io" | bash'

# Making the system remember sdk as a command and install Java and Maven afterwards in the specified versions
ARG JAVA_VERSION=21.0.1-tem
ARG MAVEN_VERSION=3.9.5
RUN bash -c 'source "$HOME/.sdkman/bin/sdkman-init.sh" \
    && sdk install java $JAVA_VERSION \
    && sdk install maven $MAVEN_VERSION'

# Once the real binaries exist these are the symlinked paths that need to exist on PATH
ENV PATH=/root/.sdkman/candidates/java/current/bin:$PATH
ENV PATH=/root/.sdkman/candidates/maven/current/bin:$PATH

# Installing Python3
RUN apt install python3 -y

# Insallng Node.js in order to execute JavaScript
ARG NODE_MAJOR=21

RUN apt-get update -y
RUN apt-get install -y ca-certificates curl gnupg
RUN mkdir -p /etc/apt/keyrings
RUN bash -c 'curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg'
RUN bash -c 'echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list'
RUN apt-get update -y
RUN apt-get install nodejs -y

# Installing jest as a JavaScript testing framework
RUN npm install --save-dev jest
