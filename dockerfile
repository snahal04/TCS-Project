FROM ubuntu:20.04

# Create code directory
RUN mkdir source

# Set working directory
WORKDIR /source

# Install utilities
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get update -y  && \
    apt-get install -y git  && \
    apt-get install -y vim

# install OpenJDK
RUN apt update && apt install -y default-jre

RUN apt install -y default-jdk && \
    apt-get clean

RUN  update-alternatives --config java
# tap Enter to continue

#Setup JAVA_HOME -- env. variables
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
RUN export JAVA_HOME

RUN export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
# echo $JAVA_HOME to check if configured

# INstall eclipse IDE and Configure GUI
# RUN  snap install --classic eclipse

# Installing Solc
RUN  add-apt-repository ppa:ethereum/ethereum
RUN  add-apt-repository ppa:ethereum/ethereum-dev
RUN  apt-get update && \
     apt-get -y install solc

# Creating directry for sol
RUN mkdir ~/solidity_src/ && cd ~/solidity_src/
RUN touch 1_Storage.sol


# Install Geth 

RUN add-apt-repository -y ppa:ethereum/ethereum

RUN apt-get update && \
    apt-get install -y ethereum

RUN apt-get update

# sudo snap install --classic eclipse
# sudo docker pull ethereum/client-go && \
# sudo docker run -it -p 30303:30303 ethereum/client-go