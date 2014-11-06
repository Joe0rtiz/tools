FROM ubuntu:14.04

# info
MAINTAINER Joe Ortiz version: 0.3

# update container
RUN apt-get update && \
    apt-get install -y python-software-properties \
                       software-properties-common \
                       openconnect && \
    add-apt-repository ppa:cernekee/ppa && \
    apt-get update && \
    apt-get install -y stoken libstoken-dev