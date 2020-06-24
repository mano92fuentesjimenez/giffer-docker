FROM node:12.18.1-alpine3.9

WORKDIR /opt/giffer-backend

RUN cd /opt \
    && git clone https://github.com/mano92fuentesjimenez/giffer-backend \
    && cd giffer-backend \
    && git checkout cloud \
    && yarn

CMD ["yarn","start"]
