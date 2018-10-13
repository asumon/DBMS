var fs = require('fs');

var mysql = require('mysql');

//var config = JSON.parse(fs.readFileSync("connector.json"))

var connection = mysql.createConnection({

    host: '127.0.0.1',

    user: 'root',

    password: 'mysql',
    database: 'hyf1'

});



connection.connect((err) => {

  if (err) throw new Error(err);

  console.log('database connecting');

});


const columns1 = ['task.title', 'user.name'];

connection.query('SELECT ?? FROM ?? JOIN ?? ON ??=?? ORDER BY ??', [columns1, 'task', 'user', 'task.user_id', 'user.id', 'user.id'], (error, results, fields) => {

    if (error) {

      throw new Error(error);

    }

    console.log('database connected');

    // console.log(fields);

    results.map(result => console.log(`${result.title} assigned to ${result.name}`));

});

connection.query('SELECT COUNT(??) FROM task', ['task.id'], (error, results, fields) => {

  if (error) {

    throw new Error(error);

  }

  console.log(results);

})

connection.end((err) => {

  console.log('database Disconnected');

});