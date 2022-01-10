# user base httpd image
FROM httpd:2.4

LABEL maintainer="prashanthhn25@gmail.com"

RUN apt-get update -y

# remove default html files for apache https server
RUN rm -rf htdocs/*

# copy custom website files from local to docker container
COPY dockerContent/case_study_app/ /usr/local/apache2/htdocs
