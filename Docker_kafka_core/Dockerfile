FROM penolove/centos7:spark_core

COPY download.sh /root/download.sh
COPY start_server.sh /root/start_server.sh
COPY start.sh /root/start.sh
RUN /root/download.sh;  

ENTRYPOINT /usr/sbin/sshd -D & /root/start.sh && /root/start_server.sh && tail -f /dev/null;
