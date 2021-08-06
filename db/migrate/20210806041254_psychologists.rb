class Psychologists < ActiveRecord::Migration[6.1]
  def change
    create_table :psychologists do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :age
      t.string :gender
      t.string :description
      t.string :professional_register
      t.string :speciality

      t.timestamps
    end
  end
end
