create database if not exists simple_blog;
use  simple_blog;

CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL,
  `username` mediumtext,
  `creationdate` datetime DEFAULT NULL,
  `userlocation` mediumtext,
  `user_age` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` VALUES (1,'Jeff Atwood','2008-07-31 14:22:31','El Cerrito, CA',45),
(2,'Jarrod Dixon','2008-07-31 14:22:31','New York, NY',36),
(3,'Joel Spolsky','2008-07-31 14:22:31','New York, NY',NULL),
(4,'Jon Galloway','2008-07-31 14:22:31','San Diego, CA',45),
(5,'Chris Jester-Young','2008-08-01 04:18:05','Raleigh, NC',35);

select * from users;


CREATE TABLE IF NOT EXISTS `posttype` (
  `posttypeid` int(11) NOT NULL AUTO_INCREMENT,
  `posttype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`posttypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `posttype` VALUES (1,'question'),(2,'Answer');

select * from posttype;

CREATE TABLE IF NOT EXISTS `posts` (
  `postid` int(11) NOT NULL,
  `post_type_id` int(11) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `body` longtext,
  `title` mediumtext,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `fk_posttype_id` (`post_type_id`),
  KEY `fk_user_id` (`user_id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `body` (`body`),
  FULLTEXT KEY `title_2` (`title`,`body`),
  CONSTRAINT `fk_posttype_id` FOREIGN KEY (`post_type_id`) REFERENCES `posttype` (`posttypeid`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert `posts`  VALUES (1,1,'2008-08-01 05:21:22','<p>Solutions are welcome in any language</p>','Question',null),
(2,1,'2008-08-01 05:21:22','<p>Solutions in any languages</p>','Question',null),
(3,1,'2008-08-01 05:21:22','<p>Solutions are welcome in any language</p>','Question',null),
(4,1,'2008-08-01 05:21:22','<p>Solutions are welcome in any language</p>','Question',null),
(5,1,'2008-08-01 05:21:22','<p>Solutions are welcome in any language</p>','Question',null);


select * from posts;

CREATE TABLE IF NOT EXISTS `comments` (
  `commentid` int(11) NOT NULL,
  `postid` int(11) DEFAULT NULL,
  `commenttext` longtext,
  `commentcreatedate` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentid`),
  KEY `fk_commentsposts_id` (`postid`),
  KEY `fk_commentuser_id` (`userid`),
  CONSTRAINT `fk_commentsposts_id` FOREIGN KEY (`postid`) REFERENCES `posts` (`postid`),
  CONSTRAINT `fk_commentuser_id` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `comments` VALUES (1,2,'You might want to mention','2012-02-07 03:12:17',1),
(2,2,'You might want ','2012-02-05 03:12:17',2),
(3,2,'You want to mention','2016-02-07 03:12:17',3),
(4,2,'Anything','2017-02-07 03:12:17',4),
(5,2,'Maybe','2018-02-07 03:12:17',5);

select * from comments,posts where post_type_id=2 ;




 