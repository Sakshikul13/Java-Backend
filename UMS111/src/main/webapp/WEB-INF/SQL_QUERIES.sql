CREATE TABLE enrollment (enrollment_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,student_id INT(11) NOT NULL,student_name VARCHAR(100),course_code VARCHAR(50) NOT NULL,detail_id varchar(100) NOT NULL,UNIQUE (student_id));


CREATE TABLE student (student_id INT(11) NOT NULL PRIMARY KEY,student_name VARCHAR(100) NOT NULL,email VARCHAR(100) UNIQUE NOT NULL);


CREATE TABLE course_details (detail_id INT(11) NOT NULL PRIMARY KEY,course_code VARCHAR(50) NOT NULL,instructor VARCHAR(100) NOT NULL,credit INT(11) NOT NULL,type VARCHAR(50) NOT NULL,FOREIGN KEY (course_code) REFERENCES course(course_code) ON DELETE CASCADE ON UPDATE CASCADE);


CREATE TABLE course (course_code VARCHAR(50) NOT NULL PRIMARY KEY,course_name VARCHAR(100));