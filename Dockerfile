FROM debian:bookworm

LABEL maintainer="you@example.com"
ENV DEBIAN_FRONTEND=noninteractive

# Update system and install prerequisites
RUN apt-get update && apt-get install -y \
    wget curl gnupg2 sudo git vim ca-certificates lsb-release software-properties-common \
    systemd systemd-sysv dbus net-tools openssh-client \
    && apt-get clean

# Create working directory
WORKDIR /usr/src

# Copy the install script into the container
COPY sng_freepbx_debian_install.sh .

# Make it executable
RUN chmod +x ./sng_freepbx_debian_install.sh

# Fix for fwconsole error - only this change is needed
RUN ln -s /var/lib/asterisk/bin/fwconsole /usr/sbin/fwconsole || true

# Expose necessary ports for FreePBX
EXPOSE 80 443 5060/udp 5160/udp 18000-18100/udp

# Default shell entry
CMD ["/bin/bash"]
