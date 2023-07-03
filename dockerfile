ARG DEBIAN_TAG=11.7


FROM debian:$DEBIAN_TAG


ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt-get download libc-bin \
  && dpkg --extract ./libc-bin_*.deb ./deb \
  && rm libc-bin_*.deb \
  && cp ./deb/sbin/ldconfig /sbin/ \
  && rm -Rf ./deb \
  && apt-get install --reinstall libc-bin


RUN apt-get install -y --no-install-recommends \
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
