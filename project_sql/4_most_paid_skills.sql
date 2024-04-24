SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True 
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25;


/*
[
  {
    "skills": "erlang",
    "avg_salary": "72500"
  },
  {
    "skills": "pascal",
    "avg_salary": "46000"
  },
  {
    "skills": "golang",
    "avg_salary": "36250"
  },
  {
    "skills": "sass",
    "avg_salary": "33750"
  },
  {
    "skills": "rust",
    "avg_salary": "32500"
  },
  {
    "skills": "vb.net",
    "avg_salary": "15000"
  },
  {
    "skills": "bash",
    "avg_salary": "12045"
  },
  {
    "skills": "swift",
    "avg_salary": "11389"
  },
  {
    "skills": "nosql",
    "avg_salary": "10286"
  },
  {
    "skills": "c++",
    "avg_salary": "9706"
  },
  {
    "skills": "t-sql",
    "avg_salary": "7497"
  },
  {
    "skills": "c#",
    "avg_salary": "7390"
  },
  {
    "skills": "r",
    "avg_salary": "7065"
  },
  {
    "skills": "vba",
    "avg_salary": "7013"
  },
  {
    "skills": "matlab",
    "avg_salary": "6492"
  },
  {
    "skills": "sas",
    "avg_salary": "6273"
  },
  {
    "skills": "python",
    "avg_salary": "5709"
  },
  {
    "skills": "powershell",
    "avg_salary": "5656"
  },
  {
    "skills": "sql",
    "avg_salary": "5638"
  },
  {
    "skills": "scala",
    "avg_salary": "5524"
  },
  {
    "skills": "crystal",
    "avg_salary": "5344"
  },
  {
    "skills": "c",
    "avg_salary": "5057"
  },
  {
    "skills": "java",
    "avg_salary": "4872"
  },
  {
    "skills": "ruby",
    "avg_salary": "4576"
  },
  {
    "skills": "html",
    "avg_salary": "4286"
  }
]*/