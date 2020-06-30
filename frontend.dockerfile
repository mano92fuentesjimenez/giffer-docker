FROM node:12.18.1-stretch

WORKDIR /opt/giffer-frontend

RUN cd /opt \
    && apt-get update \
    && apt-get install -y git \
    && git clone https://github.com/mano92fuentesjimenez/giffer-frontend \
    && cd giffer-frontend \
    && yarn add serve

CMD ["yarn serve","-s", "/opt/", "-l", "80"]