const express = require('express');

const app = express();
const port = process.env.PORT || 5000;
app.use(express.json())
app.use(express.urlencoded({ extended: true }))
app.get('/', (_, res) => {
    res.status(200).json({
        message: 'Welcome to our API'
    });
});

app.listen(port, () => {
    console.log(`listening to app on port ${port}..`)
});

module.exports = app;
