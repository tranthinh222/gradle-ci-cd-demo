FROM jenkins/agent:jdk17

USER root

RUN groupadd -g 124 docker && usermod -aG docker jenkins

RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*

USER jenkins

