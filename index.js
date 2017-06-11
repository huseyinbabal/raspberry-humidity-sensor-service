const http = require('http');
const port = process.env.PORT || 3000;

const requestHandler = (request, response) => {
  response.end('Humidity Sensor Service');
}

const server = http.createServer(requestHandler);

server.listen(port, (err) => {
  if (err) {
    return console.log('Error occurred while running service', err);
  }

  console.log(`Service is running on port: ${port}`);
})
