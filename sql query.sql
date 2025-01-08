-- 1. select whole table.
SELECT 
    *
FROM
    vipul.`employee sample data`;


-- 2. select first 5 row from the table.
SELECT 
    *
FROM
    vipul.`employee sample data`
LIMIT 5;


-- 3. select employees form the It OR Finance.
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    Department = 'IT'
        OR Department = 'Finance';
        

-- 4. select employees where Department is not in Human Resources or Marketing.
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    Department NOT IN ('Human Resources' , 'Marketing');
    

-- 5.What is the oldest age?
SELECT 
    MAX(Age)
FROM
    vipul.`employee sample data`;
    

-- 6. What is the youngest age?
SELECT 
    MIN(Age)
FROM
    vipul.`employee sample data`;
    

-- 7. count of employees who live in the China or Brazil.
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    Country = 'China' OR Country = 'Brazil';
    

-- 8. count the unique countries in employees table. 
SELECT 
    COUNT(DISTINCT (Country))
FROM
    vipul.`employee sample data`;


-- 9. selects the average Bonus % spent by Country from the employee table. 
SELECT 
    AVG(`Bonus %`)
FROM
    vipul.`employee sample data`
GROUP BY (Country);


-- 10. selects the average Bonus % spent by city from the employee table.
SELECT 
    AVG(`Bonus %`)
FROM
    vipul.`employee sample data`
GROUP BY (City);


-- 11. select country who is end with States.
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    Country LIKE '%States';
    

-- 12. select Job Title, Gender, Age and Annual Salary from employee table.
SELECT 
	`Job Title`,Gender,Age,`Annual Salary`
FROM
    vipul.`employee sample data`;
    

-- 13. select rows where the Age is between 30 and 55.   
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    Age BETWEEN 30 AND 55;
    

-- 14.select rows where Department begin with letters between 'I' and 'V’.    
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    Department BETWEEN 'I' AND 'V';
    

-- 15. returns the number of rows in the employee table
SELECT 
    COUNT(*)
FROM
    vipul.`employee sample data`;
    

-- 16. select the sum of Annual Salary in Gender from employee table
SELECT 
    SUM(`Annual Salary`)
FROM
    vipul.`employee sample data`
GROUP BY Gender;


-- 17. select rows with NULL Exit Date values
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    `Exit Date` is null;
    

-- 18. How many `Exit Date` are missing?
SELECT 
    COUNT(`Exit Date`)
FROM
    vipul.`employee sample data`
WHERE
    `Exit Date` IS NULL;
    

-- 19. whose employe is belong in Chicago city.
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    City = 'Chicago';
    

-- 20. whose employee  Ethnicity is Black or Asian.
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    Ethnicity = 'Black'
        OR Ethnicity = 'Asian';
        

-- 21. Employee age is 50 and 51.
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    Age IN (50 , 51);


-- 22. who's employee department 4th caracter is a and employee business unit start with C.   
SELECT 
    *
FROM
    vipul.`employee sample data`
WHERE
    Department LIKE '___a%'
        AND `Business Unit` NOT LIKE 'C%';
        

-- 23. employee date diffrence as abs diffrence.     
SELECT 
    Gender,
    Department,
    (`Exit Date` - `Hire Date`) AS diffrence,
    ABS(`Exit Date` - `Hire Date`) AS abs_diffrence
FROM
    vipul.`employee sample data`;
    

-- 24. employee table avg annual salary and round avg annual salary accross department.
SELECT 
    Department,
    AVG(`Annual Salary`) AS avg_salary,
    ROUND(AVG(`Annual Salary`), 2) AS round_avg_salary
FROM
    vipul.`employee sample data`
GROUP BY Department;


-- 25. exit date null gap fil with 0.
SELECT 
    `Exit Date`,
    IFNULL(`Exit Date`, 0) AS rated_date
FROM
    vipul.`employee sample data`;
