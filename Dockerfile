# Use the Python 3.8 slim image as the base
FROM python:3.8-slim

# Update package manager and install any additional packages if needed
RUN apt-get update && apt-get install -y \
    && apt-get clean

# Set the working directory in the container
WORKDIR /app

# Copy the Python script or application files into the container
COPY . .

# Expose port 5000 to allow external access
EXPOSE 5000

# Specify the command to run the application
CMD ["python", "hr.py"]
