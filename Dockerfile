FROM tomcat 
ADD . /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
