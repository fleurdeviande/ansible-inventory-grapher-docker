FROM centos/python-27-centos7:latest
LABEL maintainer="Eugene Kirillov"
ENV container=docker

COPY requirements.txt ./requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["/bin/bash"]