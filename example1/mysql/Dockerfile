FROM mysql:5.7

RUN apt-get update
RUN apt-get install -y vim
# not root user
RUN useradd mysql_user
USER mysql_user
# add custom.cnf
COPY config/*.cnf /etc/mysql/conf.d
