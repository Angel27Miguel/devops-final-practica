const request = require('supertest');
const app = require('./app');

describe('GET /', () => {
  it('Debe responder con Hola Mundo', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.text).toBe('¡Hola Mundo desde DevOps CI/CD!');
  });
});
