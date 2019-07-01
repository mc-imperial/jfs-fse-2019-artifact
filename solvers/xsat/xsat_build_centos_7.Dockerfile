ARG BASE_IMAGE
FROM ${BASE_IMAGE}
LABEL maintainer "a@a.com"

# Woraround stupid issue
# https://github.com/CentOS/sig-cloud-instance-images/issues/15
RUN yum install -y yum-plugin-ovl && yum clean all

# Make the user and install sudo
RUN yum install -y sudo && \
  useradd -m user && \
  echo user:user | chpasswd && \
  echo 'user ALL=(root) NOPASSWD: ALL' >> /etc/sudoers
RUN chmod 755 /home/user/

USER user
WORKDIR /home/user

# In container development packages (not essential and can be commented out)
RUN sudo yum install -y vim less

# Install the dependencies for CentOS repos that we can use
RUN sudo yum install -y \
  coreutils \
  gcc \
  gcc-c++ \
  git \
  make \
  && sudo yum clean all

# Copy over the zip file contents
COPY /xsat-smt-comp-2017 /home/user/xsat-smt-comp-2017
# Patch
ADD /starexec_run_default /home/user/xsat-smt-comp-2017/bin/
# Fix ownership
RUN sudo chown -R user: /home/user/xsat-smt-comp-2017

# Setup permissions so that XSat works when run under any user
RUN find /home/user/xsat-smt-comp-2017 -exec chmod 777 \{} \;
