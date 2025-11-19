FROM quay.io/centos/centos:stream9 AS builder

#ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Paris
ENV HALO_HOME=/opt/openhalo/1.0

# Installer les outils de build
RUN dnf install -y \
    git gcc gcc-c++ make cmake autoconf bison flex pkg-config \
    postgresql postgresql-devel \
    mariadb-connector-c mariadb-connector-c-devel \
    libicu libicu-devel zlib-devel readline-devel tzdata \
    perl perl-core && \
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

# Variables d'environnement
#ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Paris
ENV HALO_HOME=/opt/openhalo/1.0
ENV PGDATA=/home/halo/ohdata
ENV PATH=$HALO_HOME/bin:$PATH
ENV LD_LIBRARY_PATH=
ENV LD_LIBRARY_PATH=$HALO_HOME/lib:${LD_LIBRARY_PATH}
ENV PGHOST=/var/run/openhalo

# Installer les dépendances runtime seulement
RUN microdnf install -y \
    postgresql \
    mariadb-connector-c \
    libicu \
    zlib \
    readline \
    tzdata \
    git && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    microdnf clean all

# Copier OpenHalo compilé depuis le stage builder
COPY --from=builder $HALO_HOME $HALO_HOME

# Créer utilisateur et permissions
RUN groupadd -g 1500 halo && \
    useradd -u 1500 -g 1500 -m halo && \
    mkdir -p /home/halo/ohdata /var/run/openhalo && \
    chown -R halo:halo /home/halo /var/run/openhalo $HALO_HOME && \
    chmod 700 /home/halo/ohdata

# Copier le script d’entrée
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

USER halo
WORKDIR /home/halo

# Exposer les ports PostgreSQL (5432) et MySQL-compat (3306)
#EXPOSE 5432 3306

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
