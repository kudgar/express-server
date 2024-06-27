const express = require('express');
require('dotenv').config()

const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {

  res.status(200)
  res.json({
    'ok': '200',
    'test': process.env.KEY
  })
});

app.listen(port, () => console.log(
  `Express запущен в режиме нажмите ${port} Ctrl + C для завершения.`
));