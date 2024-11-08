# Use an official Python runtime as the base image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Install nmap and any other packages
RUN apt-get update && apt-get install -y nmap

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies listed in requirements.txt
# If you don’t have this file, you can skip this step
RUN pip install --no-cache-dir -r requirements.txt

# Run the Python program by default
CMD ["python", "./argus.py"]

