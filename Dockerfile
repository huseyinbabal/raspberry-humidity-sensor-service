FROM resin/raspberrypi3-node:slim

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

RUN JOBS=MAX npm install --production --unsafe-perm && npm cache clean && rm -rf /tmp/*

COPY . ./

ENV INITSYSTEM on

CMD ["npm", "start"]
