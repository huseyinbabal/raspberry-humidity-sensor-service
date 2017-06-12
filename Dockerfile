FROM resin/raspberrypi3-node:slim

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . ./

CMD ["npm", "start"]
