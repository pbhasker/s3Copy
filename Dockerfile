FROM python:2.7.13

ADD s3copy setup.py setup.cfg /tmp/dest/

RUN find /tmp/

RUN python /tmp/dest/setup.py install
