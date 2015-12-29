const test = require('tape')
const request = require('supertest')
const app = require('../index')

test('server', (t) => {
  request(app)
  .get('/')
  .end((err, res) => {
    t.equals(err, null)
    t.equals(res.status, 200)
    t.equals(res.text, app.get('message'))
    t.end()
  })
})
