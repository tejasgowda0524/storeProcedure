--create database StoreProcedure;

--use StoreProcedure;

--create table employee(
--emp_name varchar(33),
--emp_ID int identity(1,1) primary key,
--emp_age int,
--emp_number varchar(66)
--);


--create procedure insertdataSP1
--as
--begin
--	insert into employee(emp_name,emp_age,emp_number)
--	values('tejas',22,'8884656437');
--end



create procedure insertvalueSP1
@name varchar(33),@age int,@num varchar(66)
as
begin
	insert into employee (emp_name,emp_age,emp_number)
	values(@name,@age,@num);
end

exec insertvalueSP1 @name='radha',@age=23,@num='9876543216';


select * from employee;


create procedure updatevalueSP1
@name varchar(33),@age int
as
begin
	
	update employee set emp_age=@age where emp_name=@name;
end


exec updatevalueSP1 @age=88,@name='radha';




create procedure deletevalueSP
@age int
as
begin
	
	delete from employee where emp_age=@age;
end

exec deletevalueSP @age=88;


select * from employee;


