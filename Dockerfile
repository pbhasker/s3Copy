FROM python:2.7.13

ADD s3copy setup.py setup.cfg /tmp/s3copy/

RUN ls /tmp/
RUN ls

RUN python /tmp/s3copy/setup.py install
