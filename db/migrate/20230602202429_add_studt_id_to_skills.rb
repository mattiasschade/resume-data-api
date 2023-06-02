class AddStudtIdToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :student_id, :integer
  end
end
