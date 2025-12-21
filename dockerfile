FROM tomcat:9-jdk8-corretto-a12

LABEL maintainer="dhaneeshjadhav@gmail.com"
LABEL application="apache-tomcat"
LABEL environment="production"

WORKDIR /usr/local/tomcat

# Remove default Tomcat apps
RUN rm -rf webapps/*

# Deploy application
COPY target/*.war webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
