# Docker base image
FROM tudo/clos-ssd:base

# Maintainer
MAINTAINER Tu Mai Anh Do <tudo@isi.edu>

ADD bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh

ENV BOOTSTRAP /etc/bootstrap.sh

CMD ["/etc/bootstrap.sh", "-d"]

# Add HiBench to docker image
ENV HIBENCH_HOME /root/HiBench

# download right version of HiBench
RUN git clone https://github.com/intel-hadoop/HiBench.git ${HIBENCH_HOME}
COPY hadoop.conf ${HIBENCH_HOME}/conf/

# start building HiBench
RUN cd ${HIBENCH_HOME} && \
mvn clean package -Phadoopbench -DskipTests
