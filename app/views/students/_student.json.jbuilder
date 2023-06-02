json.id student.id
json.first_name student.first_name
json.last_name student.last_name
json.email student.email
json.phone_number student.phone_number
json.short_bio student.short_bio
json.linkedin student.linkedin
json.twitter student.twitter
json.personal_website student.personal_website
json.online_resume student.online_resume
json.github student.github
json.photo student.photo
json.created_at student.created_at
json.updated_at student.updated_at
json.education student.educations do |education|
json.start_date education.start_date
json.end_date education.end_date
json.degree education.degree
json.university_name education.university_name
json.details education.details
end
json.experience student.experiences do |experience|
  json.start_date experience.start_date
  json.end_date experience.end_date
  json.job_title experience.job_title
  json.company_name experience.company_name
  json.details experience.details
end

json.skills student.skills do |skill|
  json.skill_name skill.skill_name
end


if student.capstone.present?
  json.capstone do
    json.name student.capstone.name
    json.description student.capstone.description
    json.url student.capstone.url
  end
end