FROM jenkins/jenkins:lts-jdk21
# Plugins versionados - cambia aqui para instalar mas
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt
# Config as Code
ENV CASC_JENKINS_CONFIG=/var/jenkins_home/casc.yaml
COPY casc.yaml /usr/share/jenkins/ref/casc.yaml
