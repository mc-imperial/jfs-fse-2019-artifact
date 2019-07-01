ARG BASE_IMAGE
FROM ${BASE_IMAGE}
LABEL maintainer "a@a.com"
ARG MATHSAT_VER=mathsat-5.4.1-linux-x86_64

# Copy over the tarball
ADD /${MATHSAT_VER}.tar.gz /home/user/
RUN cd /home/user && \
  mkdir -p mathsat/bin && \
  mv ${MATHSAT_VER}/bin/mathsat mathsat/bin/mathsat && \
  rm -rf /home/user/${MATHSAT_VER}
