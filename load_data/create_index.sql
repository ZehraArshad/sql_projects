-- Create indexes on foreign key columns for better performance
CREATE INDEX idx_company_id ON sql_course.job_postings_fact (company_id);
CREATE INDEX idx_skill_id ON sql_course.skills_job_dim (skill_id);
CREATE INDEX idx_job_id ON sql_course.skills_job_dim (job_id);

