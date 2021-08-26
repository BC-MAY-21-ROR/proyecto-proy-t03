class DeleteTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :appointments
    drop_table :patients
    drop_table :psychologists
    drop_table :users
  end
end