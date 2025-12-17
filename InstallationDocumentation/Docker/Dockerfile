FROM quay.io/centos/centos:stream9 AS builder

# Environment variables
ENV TZ=Europe/Paris
ENV HALO_HOME=/opt/openhalo/1.0

# Install build dependencies
RUN dnf install -y \
    git gcc gcc-c++ make cmake autoconf bison flex pkg-config \
    postgresql postgresql-devel \
    mariadb-connector-c mariadb-connector-c-devel \
    libicu libicu-devel zlib-devel readline-devel tzdata \
    perl perl-core \
    python3 python3-pip python3-devel freetype-devel && \ 
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    dnf clean all


WORKDIR /tmp
RUN git clone https://github.com/HaloTech-Co-Ltd/openHalo.git
WORKDIR /tmp/openHalo

RUN ./configure --prefix=$HALO_HOME --enable-debug --with-icu CFLAGS=-O2 && \
    make clean && \
    make -j$(nproc) && \
    make install && \
    make -C contrib && make -C contrib install

# ====== STAGE 2 : Runtime ======
FROM registry.access.redhat.com/ubi9/ubi-minimal:latest

# Environment variables
ENV TZ=Europe/Paris
ENV HALO_HOME=/opt/openhalo/1.0
ENV PGDATA=/home/halo/ohdata
ENV PATH=$HALO_HOME/bin:$PATH
ENV LD_LIBRARY_PATH=
ENV LD_LIBRARY_PATH=$HALO_HOME/lib:${LD_LIBRARY_PATH}
ENV PGHOST=/var/run/openhalo

# Install runtime dependencies only
RUN microdnf install -y \
    postgresql \
    mariadb-connector-c \
    mariadb \
    libicu \
    zlib \
    readline \
    tzdata \
    git \
    python3 \ 
    python3-pip \
    python3-devel \ 
    gcc make freetype-devel &&\
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    microdnf clean all

RUN pip3 install mysql-connector-python matplotlib numpy

# Create the destination directory before copying (Security)
RUN mkdir -p $HALO_HOME/share

# Copy compiled OpenHalo from the builder stage
COPY --from=builder $HALO_HOME $HALO_HOME
COPY --from=builder /tmp/openHalo/src/backend/utils/misc/postgresql.conf.sample $HALO_HOME/share/postgresql.conf.sample

# Install sed (needed for modification), modify the file, then clean up.
RUN microdnf install -y sed && \
    sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" $HALO_HOME/share/postgresql.conf.sample && \
    microdnf clean all

# Create user and permissions
RUN groupadd -g 1500 halo && \
    useradd -u 1500 -g 1500 -m halo && \
    mkdir -p /home/halo/ohdata /var/run/openhalo && \
    chown -R halo:halo /home/halo /var/run/openhalo $HALO_HOME && \
    chmod 700 /home/halo/ohdata

# Copy the Python script for compliance testing
COPY ComplianceTestingTool/openhalo_test_suite_docker.py /home/halo/openhalo_test_suite_docker.py

# Copy the entrypoint script
COPY InstallationDocumentation/Docker/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh


USER halo
WORKDIR /home/halo

# Expose PostgreSQL (5434) and MySQL-compat (3308) ports
EXPOSE 5434 3308

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

