FROM node:12.18.1-stretch

WORKDIR /opt/giffer-backend

RUN cd /opt \
    && apt-get update \
    && apt-get install -y git \
    && git clone https://github.com/mano92fuentesjimenez/giffer-backend \
    && cd giffer-backend \
    && git checkout cloud \
    && yarn

CMD ["yarn","start"]
