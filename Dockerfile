FROM penolove/centos7:spark_core

COPY download.sh /root/download.sh
COPY start_server.sh /home/user/start_server.sh
RUN /root/download.sh; chown user:user /home/user/start_server.sh ; 

ENTRYPOINT /usr/sbin/sshd -D &  /bin/bash;
