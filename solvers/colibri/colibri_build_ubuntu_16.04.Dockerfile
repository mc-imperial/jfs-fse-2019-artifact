ARG BASE_IMAGE
FROM ${BASE_IMAGE}
LABEL maintainer "a@a.com"

# Copy over the tarball
ADD /colibri.tar.gz /home/user/colibri/

# Patch stuff
ADD /generic_starexec.sh /home/user/colibri/bin/
RUN sudo chown -R user: /home/user/colibri
# Make directories writable so it doesn't matter if a different
# user is used.
RUN find /home/user/colibri -type d -exec chmod 777 \{} \;
# FIXME: Clean up stuff we don't need
