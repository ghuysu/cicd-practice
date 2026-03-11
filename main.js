const express = require('express');

const app = express();
const port = 3000;

app.get('/helloworld', (req, res) => {
    res.send('Hello, world!\n');
});

app.get('/', (req, res) => {
    res.send(`Server is running at http://localhost:${port}\n`);
});

app.listen(port, () => {
    console.log(`New deployment started`)
    console.log(`Server is running at http://localhost:${port}`);
});