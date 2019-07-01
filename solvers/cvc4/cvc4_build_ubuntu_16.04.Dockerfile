ARG BASE_IMAGE
FROM ${BASE_IMAGE}
LABEL maintainer "a@a.com"
ARG CVC4_SRC_TARBALL
ARG CVC4_SRC_DIR_IN_TARBALL

# Install build dependencies
RUN sudo apt-get update && \
  sudo apt-get -y --no-install-recommends install \
  pkg-config \
  libboost-thread-dev \
  libcln-dev \
  unzip

# Build CV4
RUN mkdir /home/user/cvc4/
# NOTE: Docker seems to implicitly un tar this for us.
ADD /${CVC4_SRC_TARBALL} /home/user/cvc4/
WORKDIR /home/user/cvc4/
ENV \
  CVC4_SRC_DIR=/home/user/cvc4/${CVC4_SRC_DIR_IN_TARBALL} \
  CVC4_BUILD_DIR=/home/user/cvc4/build
ADD /build_cvc4.sh /home/user/cvc4/
# FIXUP permissions
RUN sudo chown -R user: /home/user/cvc4
RUN /home/user/cvc4/build_cvc4.sh
