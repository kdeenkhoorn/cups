FROM ghcr.io/kdeenkhoorn/debian-stable-amd64:latest
ENV DEBIAN_FRONTEND noninteractive
COPY --chown=root:root ./entrypoint.sh /entrypoint.sh
RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y cups cups-pdf cups-filters hplip tini avahi-daemon avahi-utils dbus \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && dbus-uuidgen > /var/lib/dbus/machine-id \
    && mkdir -p /var/run/dbus
USER root
EXPOSE 631
EXPOSE 5353
VOLUME /etc/cups
ENTRYPOINT ["/usr/bin/tini", "--", "/entrypoint.sh"]