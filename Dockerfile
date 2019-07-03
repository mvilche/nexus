FROM sonatype/nexus3:latest
LABEL AUTOR="MARTIN VILCHE" PROYECTO="NEXUS"
USER root
COPY fix-permissions.sh /usr/bin/fix-permissions.sh
RUN usermod -aG 0 nexus && chown nexus -R /opt && /usr/bin/fix-permissions.sh /opt
USER nexus
