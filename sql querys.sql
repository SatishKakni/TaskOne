CREATE TABLE task.author (
 id INT PRIMARY KEY,
 name VARCHAR(100)
 );
 
 CREATE TABLE task.post(
 id INT PRIMARY KEY NOT NULL,
 name VARCHAR(100),
 authorid INT ,
 createdts DATETIME,
 FOREIGN KEY (authorid)REFERENCES  author(id)) ;
 
 CREATE TABLE task.USER (
 id INT PRIMARY KEY,
 name VARCHAR(100) ) ;
 
 CREATE TABLE task.comment (
 id INT PRIMARY KEY NOT NULL,
 content VARCHAR(1000),
 postid INT ,
 createdts DATETIME ,
 userid INT ,
 FOREIGN KEY(postid) REFERENCES post(id),
 FOREIGN KEY(userid) REFERENCES  task.user(id) 
  );
  
  DESC task.author;
INSERT INTO task.author VALUES(1,'James Bond');
INSERT INTO task.author VALUES(2,'James');

DESC task.user;
INSERT INTO task.user VALUES(1,'Satish');
INSERT INTO task.user VALUES(2,'Hari');
INSERT INTO task.user VALUES(3,'Sandeep');



INSERT INTO task.post  VALUES(1,'Satish developes code easily',1,'2021-09-09 11:05:18');
INSERT INTO task.post  VALUES(2,'hari suffering from fiver',2,'2021-09-09 11:08:18');
INSERT INTO task.post  VALUES(3,'hari will come back',1,'2021-09-09 11:10:18');
INSERT INTO task.post  VALUES(4,'Team is very good condition',1,'2021-09-09 11:12:34');
INSERT INTO task.post  VALUES(5,'Team looks fine and balanced',2,'2021-09-09 11:18:15');
INSERT INTO task.post  VALUES(6,'Sandeep and satish are main choice now',1,'2021-09-09 11:31:25');
INSERT INTO task.post  VALUES(7,'Satish will take the lead of team',2,'2021-09-09 11:35:08');

INSERT INTO task.comment VALUES(1,'You Are Right',1,'2021-09-09 12:08:47',1);
INSERT INTO task.comment VALUES(2,'Hari is not fine',2,'2021-09-04 12:08:51',2);
INSERT INTO task.comment VALUES(3,'grate teamwork',1,'2021-09-09 12:09:25',3);
INSERT INTO task.comment VALUES(4,'team will complete the work asap',1,'2021-09-09 12:11:28',1);
INSERT INTO task.comment VALUES(5,'You Are Right',1,'2021-09-09 12:20:07',1);
INSERT INTO task.comment VALUES(6,'Hari is not fine',2,'2021-09-04 12:22:31',2);
INSERT INTO task.comment VALUES(7,'grate teamwork',1,'2021-09-09 12:34:25',3);
INSERT INTO task.comment VALUES(8,'team will complete the work asap',1,'2021-09-09 12:53:54',1);
INSERT INTO task.comment VALUES(9,'You Are Right',1,'2021-09-09 13:10:07',1);
INSERT INTO task.comment VALUES(10,'Hari is not fine',2,'2021-09-04 13:20:31',2);
INSERT INTO task.comment VALUES(11,'grate teamwork',1,'2021-09-09 13:34:25',3);
INSERT INTO task.comment VALUES(12,'team will complete the work asap',1,'2021-09-09 13:53:54',1);
INSERT INTO task.comment VALUES(13,'You Are Right',1,'2021-09-09 14:20:03',1);
INSERT INTO task.comment VALUES(14,'Hari is not fine',2,'2021-09-04 14:21:31',2);
INSERT INTO task.comment VALUES(15,'grate teamwork',1,'2021-09-09 14:29:25',3);
INSERT INTO task.comment VALUES(16,'team will complete the work asap',1,'2021-09-09 14:50:54',1);


SELECT a.name,p.name AS post,c.content,c.`createdts`,c.`id` AS cid
FROM task.author a
INNER JOIN task.post p ON a.id = p.authorid
INNER JOIN task.comment c ON c.postid=p.authorid 
WHERE a.name = 'James Bond' ORDER BY c.`createdts` DESC LIMIT 10;

