use studentsinfo;

CREATE TABLE class (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR (100) NOT NULL,
    `begins` DATE NOT NULL,
    `ends` DATE NOT NULL,
    PRIMARY KEY (id)
) ENGINE InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

CREATE TABLE student (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR (100) NOT NULL,
    `email` TEXT NOT NULL,
    `phone` TEXT NOT NULL,
    `class_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT `fk_class_id` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE CASCADE
) ENGINE InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;


SELECT * FROM class;

insert into class (id, name, begins, ends) values (not NULL, 'Blue', '2017-11-02 01:21:31', '2018-08-04 16:34:45');
insert into class (id, name, begins, ends) values (not NULL, 'Pink', '2018-06-14 23:47:58', '2017-10-18 04:02:55');
insert into class (id, name, begins, ends) values (not NULL, 'Yellow', '2018-06-06 13:17:59', '2017-08-23 01:13:49');
insert into class (id, name, begins, ends) values (not NULL, 'Crimson', '2018-01-09 13:10:17', '2017-12-08 04:36:07');
insert into class (id, name, begins, ends) values (not NULL, 'Maroon', '2017-09-20 23:41:08', '2017-11-14 05:57:24');


SELECT * FROM student;



insert into student (id, name, email, phone, class_id) values (1, 'Sohel Mahmud', 'sohel@nasa.gov', '217-495-5221', 5);
insert into student (id, name, email, phone, class_id) values (2, 'Huq', 'huq@ne.jp', '852-648-4513', 5);
insert into student (id, name, email, phone, class_id) values (3, 'Janeczka Hartman', 'jhartman2@ustream.tv', '718-363-7861', 4);
insert into student (id, name, email, phone, class_id) values (4, 'Luigi Bennis', 'lbennis3@europa.eu', '887-780-0103', 5);
insert into student (id, name, email, phone, class_id) values (5, 'Averell Dalmon', 'adalmon4@cdc.gov', '386-753-5293', 5);
insert into student (id, name, email, phone, class_id) values (6, 'Diane Ablott', 'dablott5@wisc.edu', '979-241-0869', 3);
insert into student (id, name, email, phone, class_id) values (7, 'Chloette Mehew', 'cmehew6@bing.com', '785-215-0084', 3);
insert into student (id, name, email, phone, class_id) values (8, 'Natala Oakwell', 'noakwell7@scientificamerican.com', '899-463-2253', 2);
insert into student (id, name, email, phone, class_id) values (9, 'Travis Huxster', 'thuxster8@ocn.ne.jp', '908-936-9435', 4);
insert into student (id, name, email, phone, class_id) values (10, 'Jaquelin Josefsen', 'jjosefsen9@weibo.com', '989-970-9968', 4);
insert into student (id, name, email, phone, class_id) values (11, 'Lorene Montilla', 'lmontillaa@umich.edu', '718-466-9859', 3);
insert into student (id, name, email, phone, class_id) values (12, 'Dun Simondson', 'dsimondsonb@google.ca', '260-253-0204', 2);
insert into student (id, name, email, phone, class_id) values (13, 'Marsha Sotham', 'msothamc@behance.net', '419-873-5054', 4);
insert into student (id, name, email, phone, class_id) values (14, 'Kata Eim', 'keimd@abc.net.au', '186-367-1910', 4);
insert into student (id, name, email, phone, class_id) values (15, 'Sheffie Paule', 'spaulee@nasa.gov', '969-469-4064', 5);
insert into student (id, name, email, phone, class_id) values (16, 'Meryl Titterell', 'mtitterellf@tinyurl.com', '135-906-0029', 2);
insert into student (id, name, email, phone, class_id) values (17, 'Oona Lerer', 'olererg@about.me', '907-407-1974', 1);
insert into student (id, name, email, phone, class_id) values (18, 'Lanni Whittington', 'lwhittingtonh@creativecommons.org', '155-665-4360', 1);
insert into student (id, name, email, phone, class_id) values (19, 'Cy Attock', 'cattocki@lycos.com', '184-760-5381', 3);
insert into student (id, name, email, phone, class_id) values (20, 'Giacopo Stango', 'gstangoj@nyu.edu', '536-302-8244', 2);


-- STEP 3 .......... 
-- Create an index on the name column of the student table.
CREATE INDEX idx_studentName
ON student (name);

-- Add a new column to the class table named status which can only have the following values: not-started, ongoing, finished (hint: enumerations).
ALTER TABLE class
ADD `status` ENUM ('not-started', 'ongoing', 'finished');
