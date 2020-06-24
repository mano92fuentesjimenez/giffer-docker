FROM node:12.18.1-stretch

WORKDIR /opt/giffer-frontend

RUN cd /opt \
    && apt-get update \
    && apt-get install -y git \
    && git clone https://github.com/mano92fuentesjimenez/giffer-frontend \
    && cd giffer-frontend \
    && git checkout cloud \
    && yarn
