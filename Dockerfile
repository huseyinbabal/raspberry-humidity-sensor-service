FROM resin/raspberrypi3-node:onbuild

ENV INITSYSTEM on

EXPOSE 3000

COPY index.js .
COPY package.json .

RUN npm install

CMD ["npm", "start"]
