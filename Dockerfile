FROM tomcat 
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
ADD . /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
