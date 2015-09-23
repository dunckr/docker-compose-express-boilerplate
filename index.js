const express = require('express');
const app = express();

app.set('message', 'Hello World!');
app.get('/', (req, res) => {
  res.send(app.get('message'));
});

app.listen(process.env.PORT || '3000');

module.exports = app;
