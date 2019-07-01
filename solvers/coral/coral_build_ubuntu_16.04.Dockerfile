ARG BASE_IMAGE
FROM ${BASE_IMAGE}
LABEL maintainer "a@a.com"
RUN sudo apt-get update

# Build Z3 4.6.0 + fixes
RUN mkdir -p /home/user/z3
ADD /build_z3.sh /home/user/z3/
RUN cd /home/user/z3 && \
  Z3_SRC_DIR=/home/user/z3/src \
  Z3_BUILD_DIR=/home/user/z3/build \
  Z3_GIT_REVISION=1992749e785762338f83f03fc38717757daab98e \
  Z3_BUILD_TYPE=Release \
  Z3_STATIC_BUILD=0 \
  Z3_INSTALL=1 \
  Z3_PYTHON_BINDINGS=1 \
  /home/user/z3/build_z3.sh

# Setup smt2coral and coral

RUN sudo apt-get update && \
  sudo apt-get -y install --no-install-recommends \
    default-jre \
    llvm-5.0-tools \
    python3-pip && \
  sudo ln -s /usr/bin/FileCheck-5.0 /usr/bin/FileCheck && \
  sudo pip3 install lit
RUN mkdir -p /home/user/smt2coral
ADD /smt2coral /home/user/smt2coral
ENV SMT2CORAL_SRC_DIR=/home/user/smt2coral/smt2coral
ADD /coral.jar /home/user/smt2coral/
RUN sudo chown -R user: /home/user/smt2coral
# HACK force python3 again
RUN sudo rm -f /usr/bin/python && sudo ln -s /usr/bin/python3 /usr/bin/python

# Build realpaver
RUN mkdir -p /home/user/realpaver
ADD /realpaver-0.4.tar.gz realpaver_0.4_x86_64.patch /home/user/realpaver/
RUN sudo chown -R user: /home/user/realpaver/ && \
  sudo apt-get -y install --no-install-recommends bison flex patch && \
  cd /home/user/realpaver/realpaver-0.4 && \
  patch -p1 < ../realpaver_0.4_x86_64.patch && \
  ./configure && \
  make

# HACK: We need to patch the Z3 install to fix a utf-8 issue.
# This is REDACTED but it turns
# out there are more issues.
# This can be dropped once this is fixed in upstream Z3.
ADD /z3_utf8.patch /home/user
RUN sudo patch -d /usr/lib/python3/dist-packages/z3/ -p1 < /home/user/z3_utf8.patch
