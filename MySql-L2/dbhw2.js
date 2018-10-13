
var fs = require('fs');
var mysql = require('mysql');

var config = JSON.parse(fs.readFileSync("connector.json"))

var connection = mysql.createConnection({
    host: config.host,
    user: config.user,
    password: config.password,
    port: config.port,
    database: config.database
});

connection.connect();

const addNewTask = function(title, description, created, updated, dueDate, statusID, userID) {

   connection.query('INSERT INTO task (title, description, created, updated, due_date, status_id, user_id) VALUES (?,?,?,?,?,?,?)',
   [title, description, created, updated, dueDate, statusID, userID],(err,results,row)=> {
        if (err) console.log(err.message);
        console.log(results);
      });
};



const changeTaskTitle = function(taskID, newTitle) {

    connection.query('UPDATE task SET title = ?  WHERE id =?',[taskID,newTitle],(err,results,row)=> {
        if (err) console.log(err.message);
        console.log(results);
      });

};



const changeTaskDueDate = function(taskID, newDueDate) {
    connection.query('UPDATE task SET due_date = ?  WHERE id =?',[taskID,newDueDate],(err,results,row)=> {
        if (err) console.log(err.message);
        console.log(results);
      });
 
};
changeTaskDueDate('2020-08-10 10:00',5);

const changeTaskStatus = function(taskID, newStatus) {
    connection.query('UPDATE task SET status_id =?  WHERE id =? ',[taskID,newStatus],(err,results,row)=> {
        if (err) console.log(err.message);
        console.log(results);
      });
};


const markTaskAsCompleted = function(taskID) {
    connection.query('update task set  status_id=3 where id=?',[taskID],(err,results,row)=> {
        if (err) console.log(err.message);
        console.log(results);
      });
  
};


const deleteTask = function(taskID) {
        connection.query('delete from task where id =?',[taskID],(err,results,row)=> {
          if (err) console.log(err.message);
          console.log(results);
        });
       };


       var date = new Date();
       addNewTask('do code','mysql and node',date,date,'2020-10-13 0:00:00',1,1);
       changeTaskTitle('Hello node',2);
       changeTaskDueDate('2020-08-10 10:00',3);
       changeTaskStatus(3,4);
       markTaskAsCompleted(5);
       deleteTask(59);
connection.end();