SELECT 
    job_id,
    job_title, 
    job_title_short, 
    job_location, 
    job_schedule_type, 
    salary_year_avg, 
    name 
From 
    job_postings_fact
LEFT JOIN 
    company_dim 
ON 
    job_postings_fact.company_id= company_dim.company_id
WHERE 
    salary_year_avg 
IS NOT NULL AND 
    job_title_short ='Data Analyst'
ORDER BY 
    salary_year_avg DESC;