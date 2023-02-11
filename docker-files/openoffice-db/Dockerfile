# Use an official Ubuntu image as the base image
FROM ubuntu:20.04

# Update the package repository and install OpenOffice
RUN apt-get update
RUN apt-get install -y openoffice

# Set the working directory to /app
WORKDIR /app

# Set the command to start OpenOffice
CMD ["soffice"]