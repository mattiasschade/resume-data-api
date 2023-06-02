class AddStudentIdToSkills < ActiveRecord::Migration[7.0]
  def change
    add_reference :skills, :student, null: false, foreign_key: true
  end
end
