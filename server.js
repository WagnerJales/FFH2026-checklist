const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = 3000;
const htmlPath = path.join(__dirname, 'app.html');
const html = fs.readFileSync(htmlPath, 'utf-8');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html; charset=utf-8' });
  res.end(html);
});

server.listen(PORT, () => {
  console.log(`\n✅ App rodando em http://localhost:${PORT}\n`);
  console.log('Para parar: Ctrl+C\n');
});
