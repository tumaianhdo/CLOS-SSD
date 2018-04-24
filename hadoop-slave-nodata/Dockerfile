# Docker base image
FROM tudo/clos-ssd:base

# Maintainer
MAINTAINER Tu Mai Anh Do <tudo@isi.edu>

ADD bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh

ENV BOOTSTRAP /etc/bootstrap.sh

CMD ["/etc/bootstrap.sh", "-d"]
