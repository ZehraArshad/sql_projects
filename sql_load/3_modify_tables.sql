-- had to copy files to c because sql didnt have permissions and i checked this location by 
-- SHOW VARIABLES LIKE 'secure_file_priv';
-- in sql workbench where we run all the commands such as SELECT * from job_postings_fact


--  duplicate keys error only resolve when i deleted row with job_id=0 from skills_job_dim

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv_files/company_dim.csv'
INTO TABLE sql_course.company_dim
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv_files/skills_dim.csv'
INTO TABLE sql_course.skills_dim
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



ALTER TABLE sql_course.job_postings_fact MODIFY COLUMN job_posted_date VARCHAR(255);

SET SESSION sql_mode = '';
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv_files/job_postings_fact.csv'
INTO TABLE sql_course.job_postings_fact
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/csv_files/skills_job_dim.csv'
INTO TABLE sql_course.skills_job_dim
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';
