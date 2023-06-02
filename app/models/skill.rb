class Skill < ApplicationRecord
  has_many :students, through: :student_skills
end
