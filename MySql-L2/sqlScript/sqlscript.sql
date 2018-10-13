use hyf1;
select * from user;

INSERT INTO task VALUES ('48','new task added', 'adding task for home work', NOW(), NOW(), '2018-10-13 0:00:00', 1, 3);

/*1-addNewTask, to add a new task*/

INSERT INTO task VALUES (not null,'new task added', 'adding task for home work', NOW(), NOW(), '2018-10-13 0:00:00', 1, 3);

/*2-changeTaskTitle, to change the title of a task*/

UPDATE task SET title = 'This title has been changed'  WHERE id =1;

/*3-changeTaskDueDate, to change the due date of a task*/

UPDATE task SET due_date = '2020-08-10 10:00'   WHERE id =48;

/*changeTaskStatus, to change the status of a task*/

UPDATE task SET status_id = 3  WHERE id =45 ;

/*markTaskAsCompleted, to mark a task as completed*/

update task set  status_id=3 where id=51;

/*deleteTask, to delete a task*/

delete from task where id =51;

/*deleteUser, to delete a user*/

delete from user where id =11;

select * from task
