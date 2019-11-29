drop table adviser_table;
drop table student_table;

create table student_table(
             student_roll number(11),
			 student_name varchar(50),
			 student_department varchar(50),
			 student_contact number(5),
			 primary key(student_roll)
			 );
			 
			 
create table adviser_table(
             student_roll number(11),
			 adviser_name varchar(50),
			 adviser_contact number(5),
			 primary key(student_roll),
			 foreign key(student_roll) references student_table
			 );