# Start with the official Jenkins image
FROM jenkins/jenkins:lts

# Set environment variables
ENV KUBECTL_VERSION=v1.26.0
ENV KUBECTL_BINARY=kubectl

# Switch to root user to install kubectl
USER root

# Install necessary packages and kubectl
RUN apt-get update && \
    apt-get install -y curl && \
    curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/${KUBECTL_BINARY}" && \
    chmod +x ${KUBECTL_BINARY} && \
    mv ${KUBECTL_BINARY} /usr/local/bin/ && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Switch back to the Jenkins user
USER jenkins

# Expose Jenkins port
EXPOSE 8080

# Start Jenkins
ENTRYPOINT ["jenkins.sh"]