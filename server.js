// server.js
import http from "http";

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end(`Hello from Kubernetes demo! Time: ${new Date().toISOString()}\n`);
});

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
