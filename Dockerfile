# Author James Etheredge

FROM centos:7
ENV container docker
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
RUN echo "configuring for AWS"
RUN yum -y update
RUN yum install python
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py
RUN pip install --upgrade pip
RUN pip install --upgrade awscli
RUN pip install --upgrade s3cmd
RUN pip install --upgrade python-magic
RUN yum -y install openssh-clients
RUN cd .
RUN mkdir aws_certs
ADD aws_certs/*.pem /aws_certs/
RUN chmod -R 400 /aws_certs/
