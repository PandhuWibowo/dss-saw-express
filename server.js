const express = require('express');

const app = express();
const bodyParser = require('body-parser');

require('dotenv/config');
var mysql = require('mysql');

app.use(bodyParser.json());

var connection = mysql.createConnection({
    host : process.env.DB_HOST,
    user : process.env.DB_USER,
    password : process.env.DB_PASSWORD,
    database : process.env.DB_DATABASE,
    multipleStatements : true,
});

connection.connect(function (err) {
    if (err) throw err;
    console.log('connect');
});

app.listen(5000);
