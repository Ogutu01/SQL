use school;

create table student (
StudentID int primary key,
FirstName varchar(100),
LastName varchar(100) NOT NULL,
Age int check (Age >= 18),
Email varchar(255) NOT NULL UNIQUE
);

select * from student;

insert into student (StudentID, FirstName, LastName, Age, Email)
values (1, 'John', 'Doe', 20, 'john.doe@gmail.com'),
(2, 'Jane', 'Smith', 22, 'jane.smith@gmail.com'),
(3, 'Michael', 'Brown', 19, 'michael.brown@gmail.com');

alter table student
add EnrollmentDate date;

alter table student
modify Email varchar(300);

alter table student
drop column LastName;