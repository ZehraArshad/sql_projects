SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' 
    AND job_work_from_home = True 
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5;

/*
[
  {
    "skills": "sql",
    "demand_count": "5177"
  },
  {
    "skills": "python",
    "demand_count": "3067"
  },
  {
    "skills": "r",
    "demand_count": "1508"
  },
  {
    "skills": "sas",
    "demand_count": "1368"
  },
  {
    "skills": "go",
    "demand_count": "573"
  }
]*/