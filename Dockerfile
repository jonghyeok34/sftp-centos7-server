FROM centos:centos7

# configs
RUN yum -y install openssh-server

RUN mkdir -p /var/run/sshd
# RUN groupadd --system sftp


ADD configs/. /root
WORKDIR /root
RUN mv sshd_config /etc/ssh/sshd_config
# RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
# RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
# RUN ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key


EXPOSE 22

CMD ["/bin/bash", "run"]