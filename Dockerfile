FROM ubuntu:latest

# Install dependencies
RUN apt-get update -y
RUN apt-get install python -y

ADD s3copy setup.py setup.cfg /tmp/s3copy/

RUN ls /tmp/
RUN ls

RUN python /tmp/s3copy/setup.py install
