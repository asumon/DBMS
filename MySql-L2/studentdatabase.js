var fs = require('fs');
var mysql = require('mysql');

var config = JSON.parse(fs.readFileSync("dbconnection.txt"))


var connection = mysql.createConnection({  
host: config.host,  
user: config.user,  
password: config.password  
});  


let createTbClass = `create table if not exists class(
    id int primary key auto_increment,
    name varchar(100)not null,
    begins DATE NOT NULL,
    ends DATE NOT NULL
     )`;
 let createTbStudent = `create table if not exists student(
        id int primary key auto_increment,
        name varchar(100)not null,
        email text NOT NULL,
        phone text NOT NULL,
        class_id int  NOT NULL 
         )`;
//var classdata = "insert into class (id, name, begins, ends) values (not NULL, 'Blue', '2017-11-02 01:21:31', '2018-08-04 16:34:45')";  
//var studentdata="insert into student (id, name, email, phone, class_id) values (not null, 'Sohel Mahmud', 'sohel@nasa.gov', '217-495-5221', 5)";

let classdata=`insert into class (id, name, begins, ends) values ? `;
let classvalues=[
[null,'Green', '2017-11-02 01:21:31', '2018-08-04 16:34:45'],
[null,'Yellow', '2017-11-02 01:21:31', '2018-08-04 16:34:45']
];


let studentdata=`insert into student (id, name, email, phone, class_id) values ? `;
let studentvalues=[
    [null, 'Mahmud', 'sohel@sa.dk', '45-71453226', 5],
    [null, 'Sohel', 'sohel@na.dk', '45-71878305', 5]
];

//const index=`create index if not exists CREATE INDEX idx_studentName ON student (name)`;
const ignorindex=`alter TABLE student ADD INDEX idx_studentName (name);`;



connection.query('CREATE DATABASE IF NOT EXISTS studentsinfo', function (err,fields) {
    if (err) throw err;
    console.log(fields,'Database Created');
    connection.query('USE studentsinfo', function (err,fields) {
        console.log(fields,'Table Created')
        if (err) throw err;
        console.log(err,'Table Exists')
        connection.query(createTbClass, function (err,classtb) {
                if (err) throw err.message;
                console.log(classtb,'Class Table Created')
            });
            connection.query(classdata,[classvalues],function(err, result) {  
                if (err) throw err;  
                console.log("Record inserted");  
                });  
            connection.query(createTbStudent, function (err,studenttb) {
                if (err) throw err.message;
                console.log(studenttb,'Student Table Created')
            });
            connection.query(studentdata,[studentvalues], function (err, result) {  
                if (err) throw err;  
                console.log("Record inserted");  
                });  
                connection.query(ignorindex, function (err,indexing) {
                    if (err) throw err.message;
                    console.log(indexing,'Name Column Indexed')
                    
                })
                    connection.end();
    });
});



