ARG BASE_IMAGE_TAG=11
ARG BASE_IMAGE=debian


FROM $BASE_IMAGE:$BASE_IMAGE_TAG


ENV BASE_IMAGE=$BASE_IMAGE
ENV BASE_IMAGE_TAG=$BASE_IMAGE_TAG

ENV DEBIAN_FRONTEND=noninteractive


# This block for debian, to fix missing ldconfig during apt operations.
# Discovered problem with debian:11
RUN if [ "0$BASE_IMAGE" == '0debian' ]; then \
  apt update; \
  apt-get download libc-bin; \
  dpkg --extract ./libc-bin_*.deb ./deb; \
  rm libc-bin_*.deb; \
  cp ./deb/sbin/ldconfig /sbin/; \
  rm -Rf ./deb; \
  apt-get install --reinstall libc-bin; \
  fi;


RUN apt update \
  && apt-get install -y --no-install-recommends \
    systemd \
    openssh-server \
    avahi-daemon \
    dbus \
    cron \
    rsyslog \
    udev \
    acpid \
    \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    \
    network-manager \
    sshpass \
    python3-pip \
    sudo


# Configure SSH server
RUN mkdir /var/run/sshd \
  && echo 'root:admin' | chpasswd \
  && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
  && echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config

EXPOSE 22


CMD ["/lib/systemd/systemd"]
