FROM armhf/ubuntu

LABEL maintainer="gornialberto@gmail.com" Description="Base Docker container to run .NET Core"

#add the mosquitto repository, install it and create the data and log foldoer to be shared later as volumes with the host
RUN apt-get update && \
    apt-get install libunwind8 && \
    apt-get install libunwind8-dev && \
    apt-get install gettext && \
    apt-get install libicu-dev && \
    apt-get install liblttng-ust-dev && \
    apt-get install libcurl4-openssl-dev && \
    apt-get install libssl-dev && \
    apt-get install uuid-dev && \
    apt-get install unzip

ENTRYPOINT ["/bin/bash"]