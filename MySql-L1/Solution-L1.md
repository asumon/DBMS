Execute:
> select count(*) from task

+ ------------- +
| count(*)      |
+ ------------- +
| 35            |
+ ------------- +
1 rows

Execute:
> select count(*) from task where due_date is null

+ ------------- +
| count(*)      |
+ ------------- +
| 8             |
+ ------------- +
1 rows

Execute:
> select title,name from task inner join status on task.status_id=status.id where status.name='done'

+ ---------- + --------- +
| title      | name      |
+ ---------- + --------- +
| Become a billionaire | Done      |
| Walk the dog | Done      |
| Iron shirts | Done      |
| Buy gift for Paul | Done      |
| Change lightbulb in hallway | Done      |
| Learn how databases work | Done      |
| Buy beer for the company party | Done      |
| Buy new phone | Done      |
| Sign up for linkedin | Done      |
| Remove facebook from phone | Done      |
| Put up the new lamp in the hallway | Done      |
| Hang up paintings in living room | Done      |
+ ---------- + --------- +
12 rows

Execute:
> select title,name from task inner join status on task.status_id=status.id where status.name !='done'

+ ---------- + --------- +
| title      | name      |
+ ---------- + --------- +
| Order groceries online | Not started |
| Do HackYourFuture homework | Not started |
| Setup salary databases for accounting | Not started |
| Charge electric bicycle | Not started |
| Look at apartments in Ørestad | Not started |
| Buy new dining room table and chairs | Not started |
| Backup databases to external disk | Not started |
| Buy plane ticket to Auckland | Not started |
| Wash clothes | In progress |
| Plan meeting with London office | In progress |
| Empty the mailbox | In progress |
| Fix the flat tire on the bike | In progress |
| Wash the car | In progress |
| Write a book | In progress |
| Water the potted plants | In progress |
| Buy wine for the birthday party | In progress |
| Wash windows | In progress |
| Make the databases perform better | In progress |
| Knit sweater | In progress |
| Ride bike aroud Sjælland | In progress |
| Empty Mr Fluffy's litterbox | In progress |
| Renew buscard | In progress |
| Learn about NoSQL databases | In progress |
+ ---------- + --------- +
23 rows

Execute:
> select * from task order by created desc

+ ------- + ---------- + ---------------- + ------------ + ------------ + ------------- + -------------- + ------------ +
| id      | title      | description      | created      | updated      | due_date      | status_id      | user_id      |
+ ------- + ---------- + ---------------- + ------------ + ------------ + ------------- + -------------- + ------------ +
| 25      | Look at apartments in Ørestad | 2 or 3 rooms     | 2017-10-30 09:47:00 | 2017-10-19 06:11:26 |               | 1              | 6            |
| 30      | Remove facebook from phone | To avoid interruptions when working | 2017-10-26 17:15:07 | 2017-10-13 03:36:47 | 2017-12-19 11:10:02 | 3              | 4            |
| 1       | Wash clothes | Title says it all. | 2017-10-25 06:54:16 | 2017-10-15 13:05:09 |               | 2              | 1            |
| 17      | Setup salary databases for accounting | Use MySQL        | 2017-10-25 05:35:33 | 2017-10-10 23:22:33 | 2017-12-05 00:19:08 | 1              | 9            |
| 24      | Ride bike aroud Sjælland | Remember rainclothes and tire repair kit! | 2017-10-20 19:21:13 | 2017-10-07 01:38:06 | 2017-12-19 15:08:18 | 2              | 7            |
| 35      | Learn about NoSQL databases | MongoDB, CouchDB, etc. | 2017-10-20 01:41:53 | 2017-10-04 07:19:56 | 2017-12-23 10:13:42 | 2              |              |
| 32      | Put up the new lamp in the hallway |                  | 2017-10-15 05:45:54 | 2017-10-16 14:05:35 | 2017-12-29 02:29:26 | 3              | 3            |
| 9       | Write a book | Maybe something about dragons? | 2017-10-11 06:14:01 | 2017-10-17 12:19:08 | 2017-12-21 20:18:05 | 2              | 6            |
| 13      | Buy wine for the birthday party | Both red and white wine | 2017-10-10 14:57:22 | 2017-10-14 14:03:30 | 2017-12-10 23:43:56 | 2              | 5            |
| 22      | Charge electric bicycle | It sucks to ride it without a battery! | 2017-10-10 12:25:07 | 2017-10-07 21:45:01 | 2017-12-10 19:02:17 | 1              | 7            |
| 20      | Buy beer for the company party | 2 or 3 cases should be enough | 2017-10-08 01:39:02 | 2017-10-13 23:07:41 |               | 3              | 4            |
| 28      | Renew buscard | 3 zones          | 2017-10-07 22:47:51 | 2017-10-09 15:50:03 | 2017-12-01 14:25:40 | 2              | 6            |
| 7       | Wash the car |                  | 2017-10-06 19:39:16 | 2017-10-03 04:49:05 | 2017-12-04 17:43:16 | 2              | 10           |
| 3       | Plan meeting with London office | We will probably use skype | 2017-10-04 18:07:37 | 2017-10-14 16:01:31 | 2017-12-05 19:42:15 | 2              | 8            |
| 10      | Do HackYourFuture homework |                  | 2017-10-04 13:55:16 | 2017-10-10 00:18:05 | 2017-12-19 17:01:10 | 1              | 3            |
| 19      | Make the databases perform better | It should be possible to optimize the indexes | 2017-10-03 09:27:20 | 2017-10-01 16:27:46 | 2017-12-01 13:28:35 | 2              | 4            |
| 16      | Wash windows |                  | 2017-10-02 22:15:17 | 2017-10-07 22:31:35 | 2017-12-06 03:36:09 | 2              | 8            |
| 15      | Change lightbulb in hallway | Should be an LED bulb | 2017-10-01 19:07:35 | 2017-10-03 10:02:27 | 2017-12-08 17:09:03 | 3              | 10           |
| 12      | Water the potted plants | Maybe they need fertilizer as well | 2017-09-29 23:38:42 | 2017-10-08 04:24:53 |               | 2              | 1            |
| 26      | Empty Mr Fluffy's litterbox |                  | 2017-09-28 03:09:06 | 2017-10-13 10:38:34 | 2017-12-20 23:37:18 | 2              | 8            |
| 5       | Empty the mailbox |                  | 2017-09-27 15:17:08 | 2017-10-08 17:31:16 |               | 2              | 9            |
| 2       | Become a billionaire | This should not take long, just invent a time machine, travel back to 2010 and buy bitcoin | 2017-09-26 03:06:46 | 2017-10-08 06:14:31 | 2017-12-22 20:58:03 | 3              | 6            |
| 11      | Iron shirts |                  | 2017-09-23 03:59:58 | 2017-10-19 08:30:48 | 2017-12-08 11:00:35 | 3              | 9            |
| 21      | Knit sweater |                  | 2017-09-22 17:14:55 | 2017-10-08 09:01:35 | 2017-12-15 20:33:57 | 2              | 9            |
| 27      | Buy new dining room table and chairs | Ikea has some on sale | 2017-09-21 12:02:34 | 2017-10-02 02:05:11 | 2017-12-06 00:14:30 | 1              | 3            |
| 4       | Order groceries online | The fridge is almost empty, we need eggs and milk | 2017-09-20 19:34:43 | 2017-10-15 23:35:45 | 2017-12-24 16:00:46 | 1              | 1            |
| 23      | Buy new phone | The battery in the current one only lasts 5 hours ? | 2017-09-17 00:25:34 | 2017-10-09 11:48:12 |               | 3              |              |
| 6       | Fix the flat tire on the bike | Tools are in the garage | 2017-09-13 23:16:30 | 2017-10-06 04:03:52 | 2017-12-07 11:51:11 | 2              | 6            |
| 33      | Hang up paintings in living room |                  | 2017-09-10 05:36:11 | 2017-10-09 17:40:42 |               | 3              | 4            |
| 31      | Backup databases to external disk | Remember to store the disk in another physical location | 2017-09-09 17:32:33 | 2017-10-01 21:18:59 | 2017-12-23 14:21:01 | 1              | 2            |
| 14      | Buy gift for Paul | He could use a shirt or a tie and some socks | 2017-09-09 05:22:08 | 2017-10-17 15:58:05 | 2017-12-04 20:45:18 | 3              | 3            |
| 18      | Learn how databases work |                  | 2017-09-06 03:16:47 | 2017-10-10 16:56:58 | 2017-12-18 05:08:05 | 3              | 5            |
| 34      | Buy plane ticket to Auckland | Check prices online first! | 2017-09-05 09:07:22 | 2017-10-15 09:36:06 | 2017-12-07 11:10:05 | 1              | 9            |
| 29      | Sign up for linkedin | Make the CV awesome! ? | 2017-09-04 00:57:47 | 2017-10-18 18:07:48 | 2017-12-07 23:04:38 | 3              | 2            |
| 8       | Walk the dog |                  | 2017-09-03 02:47:17 | 2017-10-12 18:40:08 |               | 3              | 2            |
| NULL    | NULL       | NULL             | NULL         | NULL         | NULL          | NULL           | NULL         |
+ ------- + ---------- + ---------------- + ------------ + ------------ + ------------- + -------------- + ------------ +
36 rows

Execute:
> select title from task order by created desc limit 1

+ ---------- +
| title      |
+ ---------- +
| Look at apartments in Ørestad |
+ ---------- +
1 rows

Execute:
> select title,due_date from task where (title like '%database%' or description like '%database%')

+ ---------- + ------------- +
| title      | due_date      |
+ ---------- + ------------- +
| Setup salary databases for accounting | 2017-12-05 00:19:08 |
| Learn how databases work | 2017-12-18 05:08:05 |
| Make the databases perform better | 2017-12-01 13:28:35 |
| Backup databases to external disk | 2017-12-23 14:21:01 |
| Learn about NoSQL databases | 2017-12-23 10:13:42 |
+ ---------- + ------------- +
5 rows

Execute:
> select task.title ,status.name as text from task left outer join status on status.id=task.status_id
union all
select task.title ,status.name as text from status right outer join task on task.status_id=status.id

+ ---------- + --------- +
| title      | text      |
+ ---------- + --------- +
| Order groceries online | Not started |
| Do HackYourFuture homework | Not started |
| Setup salary databases for accounting | Not started |
| Charge electric bicycle | Not started |
| Look at apartments in Ørestad | Not started |
| Buy new dining room table and chairs | Not started |
| Backup databases to external disk | Not started |
| Buy plane ticket to Auckland | Not started |
| Wash clothes | In progress |
| Plan meeting with London office | In progress |
| Empty the mailbox | In progress |
| Fix the flat tire on the bike | In progress |
| Wash the car | In progress |
| Write a book | In progress |
| Water the potted plants | In progress |
| Buy wine for the birthday party | In progress |
| Wash windows | In progress |
| Make the databases perform better | In progress |
| Knit sweater | In progress |
| Ride bike aroud Sjælland | In progress |
| Empty Mr Fluffy's litterbox | In progress |
| Renew buscard | In progress |
| Learn about NoSQL databases | In progress |
| Become a billionaire | Done      |
| Walk the dog | Done      |
| Iron shirts | Done      |
| Buy gift for Paul | Done      |
| Change lightbulb in hallway | Done      |
| Learn how databases work | Done      |
| Buy beer for the company party | Done      |
| Buy new phone | Done      |
| Sign up for linkedin | Done      |
| Remove facebook from phone | Done      |
| Put up the new lamp in the hallway | Done      |
| Hang up paintings in living room | Done      |
| Order groceries online | Not started |
| Do HackYourFuture homework | Not started |
| Setup salary databases for accounting | Not started |
| Charge electric bicycle | Not started |
| Look at apartments in Ørestad | Not started |
| Buy new dining room table and chairs | Not started |
| Backup databases to external disk | Not started |
| Buy plane ticket to Auckland | Not started |
| Wash clothes | In progress |
| Plan meeting with London office | In progress |
| Empty the mailbox | In progress |
| Fix the flat tire on the bike | In progress |
| Wash the car | In progress |
| Write a book | In progress |
| Water the potted plants | In progress |
| Buy wine for the birthday party | In progress |
| Wash windows | In progress |
| Make the databases perform better | In progress |
| Knit sweater | In progress |
| Ride bike aroud Sjælland | In progress |
| Empty Mr Fluffy's litterbox | In progress |
| Renew buscard | In progress |
| Learn about NoSQL databases | In progress |
| Become a billionaire | Done      |
| Walk the dog | Done      |
| Iron shirts | Done      |
| Buy gift for Paul | Done      |
| Change lightbulb in hallway | Done      |
| Learn how databases work | Done      |
| Buy beer for the company party | Done      |
| Buy new phone | Done      |
| Sign up for linkedin | Done      |
| Remove facebook from phone | Done      |
| Put up the new lamp in the hallway | Done      |
| Hang up paintings in living room | Done      |
+ ---------- + --------- +
70 rows

Execute:
> select status.name ,count(task.id) from  status inner join task on task.status_id=status.id group by status.name

+ --------- + ------------------- +
| name      | count(task.id)      |
+ --------- + ------------------- +
| Done      | 12                  |
| In progress | 15                  |
| Not started | 8                   |
+ --------- + ------------------- +
3 rows

Execute:
> select status.name from status join task on status.id=task.status_id group by status.name asc

+ --------- +
| name      |
+ --------- +
| Done      |
| In progress |
| Not started |
+ --------- +
3 rows

