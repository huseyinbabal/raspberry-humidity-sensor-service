FROM resin/raspberrypi3-node:onbuild

ENV INITSYSTEM on

EXPOSE 3000

ADD index.js .
ADD package.json .
RUN npm install

CMD ["npm", "start"]
