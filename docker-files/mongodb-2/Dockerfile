# Use the official MongoDB image for x86 architecture
FROM mongo:4.4

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Expose the default MongoDB port
EXPOSE 27017

# Run the command to start MongoDB
CMD ["mongod"]
