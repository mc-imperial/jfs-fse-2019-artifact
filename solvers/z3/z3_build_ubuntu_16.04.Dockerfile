ARG BASE_IMAGE
FROM ${BASE_IMAGE}
LABEL maintainer "a@a.com"
ARG Z3_GIT_REVISION

# Build Z3
ENV \
  Z3_SRC_DIR=/home/user/z3/src \
  Z3_BUILD_DIR=/home/user/z3/build \
  Z3_BUILD_TYPE=Release \
  Z3_STATIC_BUILD=0 \
  Z3_CMAKE_GENERATOR="Ninja" \
  Z3_GIT_REVISION=${Z3_GIT_REVISION}
ADD /build_z3.sh /home/user/
RUN /home/user/build_z3.sh
