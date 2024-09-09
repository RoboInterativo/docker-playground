FROM bitnami/wordpress:latest


RUN apt-get update && \
    apt-get install -y iputils-ping && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
#phpmyadmin:5.2.0-apache
