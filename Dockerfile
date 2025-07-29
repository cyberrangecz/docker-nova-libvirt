FROM quay.io/openstack.kolla/nova-libvirt:2025.1-ubuntu-noble

LABEL maintainer="sapak@cshub.cz"

USER root

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        qemu-system-modules-spice \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER nova
