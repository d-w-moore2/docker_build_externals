FROM centos:7

RUN yum update -y

RUN yum  install -y git python vim sudo wget curl make

RUN git clone http://github.com/d-w-moore/externals

WORKDIR /externals

RUN git remote add upstream http://github.com/irods/externals

RUN git checkout 4-2-stable

RUN python install_prerequisites.py
