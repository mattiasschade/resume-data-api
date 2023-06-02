class RemoveStudentIdFromSkills < ActiveRecord::Migration[6.0]
  def change
    remove_column :skills, :student_id
  end
end
