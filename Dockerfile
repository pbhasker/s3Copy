FROM python:2.7.13

ADD s3copy /tmp/dest/s3copy
ADD bin /tmp/dest/bin
ADD setup.py setup.cfg requirements.txt /tmp/dest/

RUN pip install -r /tmp/dest/requirements.txt

RUN cd /tmp/dest/ && python setup.py install
