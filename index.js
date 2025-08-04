const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => res.send('Hello World!'));
app.get('/helloMars', (req, res) => res.send('Hello Mars!'));
app.get('/helloEarth', (req, res) => res.send('Hello Earth!'));

app.listen(port, () => console.log(`Listening on port ${port}`));

