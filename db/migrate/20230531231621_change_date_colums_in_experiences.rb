class ChangeDateColumsInExperiences < ActiveRecord::Migration[7.0]
  
  change_column :experiences, :start_date, :date
  change_column :experiences, :end_date, :date

end
