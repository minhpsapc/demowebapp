# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0-jdk11-openjdk-slim

# Copy your war file into the webapps directory of Tomcat
COPY /path/to/your/war/file.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Set environment variables if needed
# ENV JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"

# Start Tomcat server
CMD ["catalina.sh", "run"]
