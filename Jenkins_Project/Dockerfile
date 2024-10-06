FROM jenkins/jenkins:lts

USER root

# Install dependencies for Docker installation
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Add Docker's official GPG key
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Add Docker's official repository
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# Install Docker CE
RUN apt-get update -qq \
    && apt-get -y install docker-ce

# Add the 'jenkins' user to the 'docker' group to allow Jenkins to run Docker commands
RUN usermod -aG docker jenkins

# Clean up
RUN apt-get clean

RUN apt-get update && \
    apt-get install -y curl apt-transport-https

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/v1.27.0/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

USER jenkins
