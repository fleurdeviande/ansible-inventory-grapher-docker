FROM centos/python-27-centos7:latest
LABEL maintainer="Eugene Kirillov"
ENV container=docker

COPY requirements.txt ./requirements.txt

#Required due bug with environment https://github.com/sclorg/s2i-python-container/issues/226
ENV LD_LIBRARY_PATH=/opt/rh/python27/root/usr/lib64:/opt/rh/rh-nodejs8/root/usr/lib64:/opt/rh/httpd24/root/usr/lib64

RUN /opt/app-root/bin/pip install --upgrade pip
RUN /opt/app-root/bin/pip install -r requirements.txt

CMD ["/bin/bash"]