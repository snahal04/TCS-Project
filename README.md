# TCS-Project
RIO-45: Develop a docker container using Ethereum blockchain components

#### Project Objective and Brief : 
Set up virtual application development enviroment by creating dynamic docker image with docker compose and its variant for blockchain applications. This will include testing of the running image

#### Project Guidelines
Create a docker file with the following specifications as needed to support development activities for Ethereum Blockchain applications
* Use base OS as Ubuntu and install utilities like git, vim, build-essential.
* Install and configure openJDK. Take care to set environment variables.
* Install Eclipse IDE and configure GUI accordingly.
* Install and set the YAKINDU plugin for Eclipse to support Solidity.
* Install and configure EVM.
* Install and configure Solc.

Create a docker image of the same and test the image

## Create an Ubuntu AWS EC2 instance.

If you don't have ubuntu or virtual machine then use AWS and host a temprory ubuntu OS on cloud.

1. Signup and create an account on AWS.
2. Download and install [FileZilla Client](https://filezilla-project.org/download.php).
3. Download and install [Putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html).
4. In AWS search for EC2 -> Launch Instances -> search UBUNTU select t2.micro and launch.
5. Follow [this steps](https://asf.alaska.edu/how-to/data-recipes/connect-to-your-ec2-instance-using-putty-v1-1/) and open ubuntu terminal.

Now open FileZilla and connect the instance 


<img src="https://github.com/snahal04/TCS-Project/blob/main/images/Filezilla.png" alt="drawing" style="width:600px; height:400px;"/>

## Install Docker in Ubuntu

1. Update the apt package index and install packages to allow apt to use a repository over HTTPS:

```ubuntu
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```

2. Add Docker’s official GPG key:

```ubuntu
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

3. Use the following command to set up the repository:

```ubuntu
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

### Install Docker Engine

```ubuntu
sudo apt-get update
```

Install Docker Engine, containerd, and Docker Compose.

``` ubuntu
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin 
```

Verify that the Docker Engine installation is successful by running the `hello-world` image:

```ubuntu
sudo docker run hello-world
```

## Upload the Dockerfile 

* Download this Repo and unzip it. 
* Open and connect the FileZilla
* Search for `/home/ubuntu` directory
* Drag the repo file in the same directory

## Run the Image

Open ubuntu terminal using Putty and run the command

```ubuntu
docker build ./TCS-Project
```

It will take few minutes to complete the installation

#### Install eclipse IDE

```ubuntu 
sudo snap install --classic eclipse
```

Run Ethereum Client go 

``` ubuntu
sudo docker pull ethereum/client-go && \
sudo docker run -it -p 30303:30303 ethereum/client-go
```

To exit or stop press Ctrl + c

#### All Set Thanks.







