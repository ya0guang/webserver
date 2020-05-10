FROM ubuntu:18.04

ADD sgx-init /home/

ADD config.json /home/

RUN cd /home/ && chmod +777 sgx-init && chmod +777 config.json
