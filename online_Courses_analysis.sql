-- Find the Azr and dvps course fees togather
--Arithmetic Addition Operator

select Course_fees+(select Course_fees from Tb01 
where Course_id='Dvps') AzrDvps 
from Tb01 
where Course_id='Azr'

--Get Salesforce fees after deducting 2 installments as Due fees
--Arithmetic Substraction(-) and Multiplication(*)


select Course_name,Course_fees-(installment_price * 2) Due_fees 
from Tb02 
where Course_id='Slfc'

-- Find fees per day for all couses
-- Arithmetic Division Operator

select Course_name,
(Course_fees/cast(left(Course_duration,2) as int)) Fees_per_day
from Tb01

select * from Tb01
join Tb02 on Tb01.Course_id=Tb02.Course_id

--Fetch all courses which the fees is 35000 and not equal to 45000
-- Comparision equal to (=) and not equal to(!=) operator 

select Course_id,Course_name,Course_fees 
from Tb01 
where Course_fees='35000' and Course_fees!='45000'

-- Get course name which he duration is greater than 25 and less than 45
-- Comparision greater than(>) and Less Than (<) operator

select Course_id,Course_name,Course_duration from Tb01 
where 
(cast(left(Course_duration,2)as int))>25 
and 
(cast(left(Course_duration,2)as int))<45

-- Get the Course Details where course fees in 35000 and course_limit greater than 40
-- Logical AND operator


select * from Tb01 
where 
Course_fees=35000 
and 
cast(left(Course_limit,2) as int)>40

-- Get all course details which have placement assistance or course fees is less than 30000
-- Logical OR operator


select * from Tb01
where
Placement_assistance='Yes' 
OR 
Course_fees<30000

-- Get all course details where have placement assistance
-- Logical Not Operator

select * from Tb01 
where
not Placement_assistance = 'No'

-- Concatinate the Course id and Course name
-- String Concat operator

select concat(Course_id,'-',Course_name) Course_cancat from Tb01

-- Get the all details of course where course name with data
-- String Like operator

select * from Tb01
where Course_name like '%data%'

-- get Course name and course id one by one
--  Set Union Operator

select Course_name from Tb01
union
select Course_id from Tb01

-- Get all couse details which is there intb01 and tb02
-- Set Intersect operator

select Course_name from Tb01
intersect
select Course_name from Tb02

-- Get all couse details which is not there in tb02
-- Set Intersect operator

select Course_name from Tb01
except
select Course_name from Tb02
