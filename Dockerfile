FROM armhf/ubuntu

LABEL maintainer="gornialberto@gmail.com" Description="Base Docker container to run .NET Core"

#add the mosquitto repository, install it and create the data and log foldoer to be shared later as volumes with the host
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        \
# .NET Core dependencies
        libunwind8 \
        libunwind8-dev \
        gettext \
        libicu-dev \
        liblttng-ust-dev \
        libcurl4-openssl-dev \
        libssl-dev \
        uuid-dev \
        unzip \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]