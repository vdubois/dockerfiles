FROM getintodevops/jenkins-withdocker:lts-docker18.06.0
MAINTAINER Vincent Dubois <dubois.vct@free.fr>

# Ajout de docker-compose
RUN curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose
