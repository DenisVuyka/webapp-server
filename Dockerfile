FROM nginx:latest
LABEL version="1.0.0"
LABEL maintainer="Denys Vuika <denys.vuika@gmail.com>"

RUN apt-get update && apt-get install -y \
    curl git-core curl build-essential openssl libssl-dev \
    gcc g++ make

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y \
    nodejs
