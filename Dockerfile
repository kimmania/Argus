#### the slim version of python image from https://github.com/jasonxtn/Argus/pull/8#issuecomment-2395592954
# Use an official Python runtime as the base image
FROM python:3.12-slim
# Copy the requirements file for installing the dependency python modules
COPY requirements.txt /app/

# Install traceroute, whois, nmap functions
# Clean up after updates and install
# Install the python dependencies 
# Create an argus user
# Assign ownership of the /app directory to the argus user
RUN apt-get update && apt-get install -y \
    traceroute whois nmap \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir -r /app/requirements.txt && \
    useradd -m argus && \
    chown argus:argus /app

# Run as the argus user added above
USER argus

# Set the working directory in the container
WORKDIR /app

# Copy the application contents into the container at /app
COPY argus.py /app/
COPY config/ /app/config/
COPY modules /app/modules/
COPY utils/ /app/utils/

# Disable output buffering and prevents Python from writing .pyc files (compiled bytecode) to the filesystem. 
# These settings are commonly used in Dockerized Python applications to optimize logging and avoid unnecessary file writes.
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

# Run the Python program by default
CMD ["python", "argus.py"]

#####Kali linux works, but missing nmap, maybe more, size was over 1 GB, so looked to use the pythin images instead
# # Using an official kali linux image
# FROM kalilinux/kali-rolling
# # Copy the requirements file for installing the dependency python modules
# COPY requirements.txt /app/

# # Update installation
# # Install python 3 latest
# # Install the python dependencies (explicitly allow pip to install packages that might interfere with system-installed packages)
# # Create an argus user
# # Assign ownership of the /app directory to the argus user
# RUN apt-get update && \
#     apt-get install -y python3 python3-pip git && \
#     pip3 install --break-system-packages -r /app/requirements.txt && \
#     useradd -m argus && \
#     chown argus:argus /app

# # Run as the argus user added above
# USER argus

# # Set the working directory in the container
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# # Disable output buffering and prevents Python from writing .pyc files (compiled bytecode) to the filesystem. 
# # These settings are commonly used in Dockerized Python applications to optimize logging and avoid unnecessary file writes.
# ENV PYTHONUNBUFFERED=1 \
#     PYTHONDONTWRITEBYTECODE=1

# CMD ["bash"]
##### end kali
