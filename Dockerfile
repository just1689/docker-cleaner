FROM docker:19.03.13
COPY script /opt/script

# Creates a user with ID 1000 and GID 999
#   This user is able to use /var/run/docker.sock
RUN adduser -G ping -u 1000 -S appuser
USER 1000
ENTRYPOINT ["sh", "/opt/script"]