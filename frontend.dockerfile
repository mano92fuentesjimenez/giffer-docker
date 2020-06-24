FROM node:12.18.1-alpine3.9

WORKDIR /opt/giffer-frontend

RUN cd /opt \
    && git clone https://github.com/mano92fuentesjimenez/giffer-frontend \
    && cd giffer-frontend \
    && yarn \
    && yarn build \
    && yarn add serve

CMD ["yarn serve","-s", "build", "-l", "3000"]