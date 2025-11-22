// server.js
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;


console.log("Hello World");
app.get('/', (req, res) => {
  console.log("Hello World");
  res.send('Server running — check console.');
});

app.listen(PORT, () => {
  console.log(`Server listening on PORT : ${PORT}`);
});
