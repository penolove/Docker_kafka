FROM penolove/centos7:kafka_core_pre

COPY start_server.sh /root/start_server.sh
COPY start.sh /root/start.sh
COPY kafka_sh /root/kafka_sh

ENTRYPOINT  /root/start.sh && /root/start_server.sh && tail -f /dev/null;
