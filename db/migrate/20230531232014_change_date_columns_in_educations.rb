class ChangeDateColumnsInEducations < ActiveRecord::Migration[7.0]
  def change
    change_column :educations, :start_date, :date
    change_column :educations, :end_date, :date
  end
end
