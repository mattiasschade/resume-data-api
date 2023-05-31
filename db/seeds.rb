require 'ffaker'

50.times do
  student = Student.new(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, phone_number: FFaker::PhoneNumber.short_phone_number, short_bio: FFaker::Lorem.paragraph, linkedin: "linkedin.com",  twitter: "@#{FFaker::InternetSE.domain_word}", personal_website: FFaker::Internet.http_url, online_resume: "resume.com", github: "github.com", photo: FFaker::Image.url  )

  student.email = "#{student.first_name.downcase}#{student.last_name.downcase}@gmail.com"

  student.save
end


