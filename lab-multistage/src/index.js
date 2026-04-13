const http = require('http');
const server = http.createServer((req, res) => {
  res.writeHead(200);
  res.end('FORGE lab — multi-stage build running\n');
});
server.listen(3000, () => console.log('Server up on port 3000'));
