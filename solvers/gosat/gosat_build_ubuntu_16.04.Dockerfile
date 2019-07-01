ARG BASE_IMAGE
FROM ${BASE_IMAGE}
LABEL maintainer "a@a.com"
RUN sudo apt-get update

# Install NLopt
RUN sudo apt-get -y install libnlopt-dev

# Install LLVM 4.0
RUN sudo apt-get -y install llvm-4.0 llvm-4.0-dev

# Build Z3 4.6
RUN mkdir -p /home/user/z3
ADD /build_z3.sh /home/user/z3/
RUN cd /home/user/z3 && \
  Z3_SRC_DIR=/home/user/z3/src \
  Z3_BUILD_DIR=/home/user/z3/build \
  Z3_GIT_REVISION=b0aaa4c6d7a739eb5e8e56a73e0486df46483222 \
  Z3_BUILD_TYPE=Release \
  Z3_STATIC_BUILD=0 \
  Z3_INSTALL=1 \
  /home/user/z3/build_z3.sh

# Build goSAT
ARG GOSAT_GIT_URL=https://github.com/abenkhadra/gosat.git
ARG GOSAT_GIT_REVISION=b5a423cd4736bac13672b66218d7f63b10453bef
ENV GOSAT_GIT_URL=${GOSAT_GIT_URL}
ENV GOSAT_GIT_REVISION=${GOSAT_GIT_REVISION}
ENV GOSAT_SRC_DIR=/home/user/gosat/src
ENV GOSAT_BUILD_DIR=/home/user/gosat/build
RUN sudo apt-get -y install zlib1g-dev
RUN mkdir -p /home/user/gosat
ADD /gosat_build.sh /home/user/gosat/
RUN cd /home/user/gosat && \
  ./gosat_build.sh
