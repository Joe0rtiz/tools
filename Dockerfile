FROM ubuntu:14.04

# info
MAINTAINER Joe Ortiz version: 0.3

# update container
RUN apt-get update && \
    apt-get install -y openconnect \
                       stoken && \
    apt-get autoclean

RUN apt-get update && \
    apt-get -y install python-software-properties \
                       software-properties-common && \
    add-apt-repository ppa:cernekee/ppa && \
    apt-get update && \
    apt-get install stoken libstoken-dev
