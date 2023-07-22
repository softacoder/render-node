const express = require('express');

const app = express();

app.get('/', (req, res) => {
    console.log(`Received request with params: ${JSON.stringify(req.query)}`)
    res.send({'The best ever is': 'class10}) 
})

let count = 0;
app.get('/counter', (req, res) => {
count = count + 1
res.send({'currentCount': count })

})

app.listen(3000)