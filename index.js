const express = require('express')
const app = express()

app.set('port', process.env.PORT || 3000)
app.set('message', 'Hello World!')

app.get('/', (req, res) => {
  res.send(app.get('message'))
})

app.listen(app.get('port'))

module.exports = app
