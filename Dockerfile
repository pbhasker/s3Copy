FROM ubuntu:latest

# Install dependencies
RUN apt-get update -y
RUN apt-get install python -y

ADD s3copy /tmp/s3copy

RUN python /tmp/s3copy/setup.py install
