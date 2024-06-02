# Base image
FROM python:latest

# Install dependencies
RUN apt-get update
RUN apt-get full-upgrade -y
RUN apt-get install -y python3 python3-venv python3-pip pylint

# Working directory
WORKDIR /l1br4ry

# Copy content to working directory
COPY . .

# Install pip requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Create a new user and group
RUN groupadd -r test && useradd -m -r -g test test

# Change ownership of the working directory to the new user
RUN chown -R test:test /l1br4ry

# Switch to the new user
USER diz
