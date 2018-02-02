# Author James Etheredge

FROM centos:7
ENV container docker

# prep configuring python and pip
RUN yum -y update
RUN yum -y install python
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py
RUN pip install --upgrade pip

# AWS tools
RUN pip install --upgrade awscli
RUN pip install --upgrade s3cmd

# python helpers
RUN pip install --upgrade python-magic
RUN pip install --upgrade boto
RUN pip install --upgrade ansible

# SSH clients
RUN yum -y install openssh-clients

# import certs to container
RUN cd /
RUN mkdir aws_certs
ADD aws_certs/*.pem /aws_certs/
RUN chmod -R 400 /aws_certs/
