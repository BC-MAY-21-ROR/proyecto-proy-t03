class UpdateFields < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :time
    change_column :appointments, :date, :datetime
    rename_column :appointments, :date, :datetime
    
  end
end
