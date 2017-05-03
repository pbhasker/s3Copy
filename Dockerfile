FROM ubuntu:latest

# Install dependencies
RUN apt-get update -y
RUN apt-get install python -y

ADD s3copy s3copy

RUN python s3copy/setup.py install
