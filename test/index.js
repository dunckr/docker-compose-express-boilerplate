var test = require('tape');
var request = require('supertest')
var app = require('../index');

test('server', (t) => {
  request(app)
  .get('/')
  .expect(200)
  .end((err, res) => {
    t.equals(err, null);
    t.equals(res.text, app.get('message'));
    t.end();
  });
});
