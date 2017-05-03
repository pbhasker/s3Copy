FROM python:2.7.13

ADD s3copy /tmp/dest/s3copy
ADD setup.py setup.cfg /tmp/dest/

RUN find /tmp/

RUN python /tmp/dest/setup.py install
