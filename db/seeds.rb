require 'ffaker'

50.times do
  student = Student.new(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, phone_number: FFaker::PhoneNumber.short_phone_number, short_bio: FFaker::Lorem.paragraph, linkedin: "linkedin.com",  twitter: "@#{FFaker::InternetSE.domain_word}", personal_website: FFaker::Internet.http_url, online_resume: "resume.com", github: "github.com", photo: FFaker::Image.url  )

  student.email = "#{student.first_name.downcase}#{student.last_name.downcase}@gmail.com"

  student.save
end

50.times do
  end_date = FFaker::Time.date
  start_date = FFaker::Time.between(end_date - 4.years, end_date)

  education = Education.new(
    start_date: start_date,
    end_date: end_date,
    degree: FFaker::Education.degree,
    university_name: FFaker::Education.school,
    details: FFaker::Lorem.paragraph
  )

  education.save
end

50.times do
  end_date = FFaker::Time.date
  start_date = FFaker::Time.between(end_date - 4.years, end_date)

  experience = Experience.new(
    start_date: start_date,
    end_date: end_date,
    job_title: FFaker::Company.position,
    company_name: FFaker::Company.name,
    details: FFaker::Lorem.paragraph
  )

  experience.save
end

50.times do
  skill = Skill.new(
    skill_name: FFaker::Skill.tech_skills
  )
  skill.save
end

50.times do 
  capstone = Capstone.new(
    name: FFaker::Product.brand,
    description: FFaker::AWS.product_description,
    url: FFaker::Image.url,
  )
  capstone.save
end

50.times do
  end_date = FFaker::Time.date
  start_date = FFaker::Time.between(end_date - 4.years, end_date)

  education = Education.new(
    start_date: start_date,
    end_date: end_date,
    degree: FFaker::Education.degree,
    university_name: FFaker::Education.school,
    details: FFaker::Lorem.paragraph,
    student_id: (rand(1..50))
  )

  education.save
end

50.times do
  end_date = FFaker::Time.date
  start_date = FFaker::Time.between(end_date - 4.years, end_date)

  experience = Experience.new(
    start_date: start_date,
    end_date: end_date,
    job_title: FFaker::Company.position,
    company_name: FFaker::Company.name,
    details: FFaker::Lorem.paragraph,
    student_id: (rand(1..50))
  )

  experience.save
end


50.times do 
  capstone = Capstone.new(
    name: FFaker::Product.brand,
    description: FFaker::AWS.product_description,
    url: FFaker::Image.url,
    student_id: (rand(1..50))
  )
  capstone.save
end