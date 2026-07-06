FROM httpd:latest

LABEL maintainer="kunballi"
LABEL description="Static HTML Website"
WORKDIR /app 

RUN rm -rf /usr/local/apache2/htdocs/*

COPY . /usr/local/apache2/htdocs/

EXPOSE 80

CMD ["httpd-foreground"]

