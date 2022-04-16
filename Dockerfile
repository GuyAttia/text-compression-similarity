# Create the image base on the Miniconda3 image
FROM python:3.8-slim

RUN apt-get update

# Creating the working directory in the container
WORKDIR /ML
# Copy the local code to the container
COPY . .

# Install requirements
RUN /usr/local/bin/python -m pip install --upgrade pip && \
  pip3 install --no-cache-dir -r requirements.txt

# ENV PYTHONPATH=/ML/src
ENV PYTHONUNBUFFERED=1