class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :phone, :string
    add_column :users, :country, :string
    add_column :users, :birth, :datetime
  end
end
