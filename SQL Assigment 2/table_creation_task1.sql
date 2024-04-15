create table Students(
Student_id int primary key,
first_name varchar(20),
last_name varchar(20),
date_of_birth date,
email varchar(60),
phone_number int
);

create table Teacher(
teacher_id int primary key,
first_name varchar(20),
last_name varchar(20),
email varchar(60)
);

create table Courses(
course_id int primary key,
course_name varchar(20),
credits int,
teacher_id int references Teacher
);

create table Enrollments (
enrollment_id int primary key,
student_id int references Students,
course_id int references Courses,
enrollment_date date
);

create table Payments (
payment_id int primary key,
student_id int references Students,
amount int,
payment_date date
);

insert into Students values (1001,'John','Nolan','2000-01-10','john.nolan@mail.com',99999999);
insert into Students values (1002,'Lucy','Chen','2000-02-11','lucy.chen@mail.com',88888888);
insert into Students values (1003,'Tim','Bradford','2000-02-14','tim.bradford@mail.com',98989898);
insert into Students values (1004,'Bailey','Nune','2000-03-01','baily.nune@mail.com',89898989);
insert into Students values (1005,'Wesley','Evers','2000-04-16','wesley.evers@mail.com',77777777);
insert into Students values (1006,'Jon','Snow','2000-01-17','jon.snow@mail.com',97979797);
insert into Students values (1007,'Emily','Clark','2000-03-17','emily.clark@mail.com',79797979);
insert into Students values (1008,'Walter','White','2000-04-12','walter.white@mail.com',78787878);
insert into Students values (1009,'Jesse','Pinkman','2000-04-21','jesse.pinkman@mail.com',87878787);
insert into Students values (1010,'Zoro','Roronoa','2000-01-20','zoro.roronoa@mail.com',98798700);

insert into Teacher values (101,'ABC','ADR','abc.adr@mail.com');
insert into Teacher values (102,'NRS','SFG','nrs.sfg@mail.com');
insert into Teacher values (103,'BFG','VER','bfg.ver@mail.com');
insert into Teacher values (104,'NJT','TRE','njt.tre@mail.com');
insert into Teacher values (105,'CAE','YUT','cae.yut@mail.com');
insert into Teacher values (106,'RTH','IUO','rth.iuo@mail.com');
insert into Teacher values (107,'JTH','IOP','jth.iop@mail.com');
insert into Teacher values (108,'GSD','PLO','gsd.plo@mail.com');
insert into Teacher values (109,'EGY','PRE','egy.pre@mail.com');
insert into Teacher values (110,'SAR','WEQ','sar.weq@mail.com');

insert into Courses values (1, 'Mathematics', 3, 101);
insert into Courses values (2, 'History', 4, 102);
insert into Courses values (3, 'Biology', 3, 103);
insert into Courses values (4, 'English', 3, 104);
insert into Courses values (5, 'Physics', 4, 105);
insert into Courses values (6, 'Chemistry', 4, 108);
insert into Courses values (7, 'Computer Science', 3, 102);
insert into Courses values (8, 'Art', 2, 103);
insert into Courses values (9, 'Music', 2, 109);
insert into Courses values (10, 'Physical Education', 1, 105);

insert into Enrollments values (1,1001,1,'2020-01-01');
insert into Enrollments values (2,1002,2,'2020-01-01');
insert into Enrollments values (3,1003,3,'2020-02-13');
insert into Enrollments values (4,1004,1,'2020-02-01');
insert into Enrollments values (5,1005,2,'2020-02-14');
insert into Enrollments values (6,1006,3,'2020-01-03');
insert into Enrollments values (7,1007,4,'2020-01-05');
insert into Enrollments values (8,1008,5,'2020-01-19');
insert into Enrollments values (9,1009,6,'2020-03-03');
insert into Enrollments values (10,1010,6,'2020-02-02');
insert into Enrollments values (11,1001,4,'2020-01-15');
insert into Enrollments values (12,1002,5,'2020-04-01');
insert into Enrollments values (13,1003,7,'2020-04-16');
insert into Enrollments values (14,1004,8,'2020-02-05');
insert into Enrollments values (15,1005,9,'2020-04-18');
insert into Enrollments values (16,1006,9,'2020-03-18');
insert into Enrollments values (17,1007,8,'2020-04-15');
insert into Enrollments values (18,1008,10,'2020-01-01');
insert into Enrollments values (19,1009,7,'2020-01-01');
insert into Enrollments values (20,1010,10,'2020-01-01');

insert into Payments values (1,1001,500,'2020-01-05');
insert into Payments values (2,1002,450,'2020-02-05');
insert into Payments values (3,1003,550,'2020-03-12');
insert into Payments values (4,1004,400,'2020-02-15');
insert into Payments values (5,1005,500,'2020-01-13');
insert into Payments values (6,1006,500,'2020-02-02');
insert into Payments values (7,1007,550,'2020-01-12');
insert into Payments values (8,1008,400,'2020-02-04');
insert into Payments values (9,1009,450,'2020-03-14');
insert into Payments values (10,1010,400,'2020-01-13');

select * from Enrollments;

select * from Students;

select * from Payments;

select * from Teacher;

select * from Courses;
