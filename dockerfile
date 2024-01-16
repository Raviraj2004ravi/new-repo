#INSTRUCTION ARG1 ARG2 ...
FROM centos:7
LABEL author=ravikamble
RUN yum install httpd -y 
COPY index.html /var/www/html/index.html
EXPOSE 80
# CMD httpd -DFOREGROUND
# CMD ["httpd -DFOREGROUND"]
# ENTRYPOINT httpd -DFOREGROUND
ENTRYPOINT ["httpd","-DFOREGROUND"]
