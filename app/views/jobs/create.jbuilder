json.job do
    json.url @new_job.url
    json.employer_name @new_job.employer_name
    json.url @new_job.url
    json.employer_name @new_job.employer_name
    json.employer_description @new_job.employer_description
    json.job_title @new_job.job_title
    json.job_description @new_job.job_description
    json.year_of_experience @new_job.year_of_experience
    json.education_requirement @new_job.education_requirement
    json.industry @new_job.industry
    json.base_salary @new_job.base_salary
    json.employer_type_id @new_job.employer_type_id
  end
