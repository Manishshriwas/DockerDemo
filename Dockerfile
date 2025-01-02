# Use the OpenJDK base image
FROM openjdk:21-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/DockerDemo-0.0.1-SNAPSHOT.jar my-app.jar

# Expose the application's port
EXPOSE 8080

# Define the entry point to run the application
ENTRYPOINT ["java", "-jar", "my-app.jar"]
