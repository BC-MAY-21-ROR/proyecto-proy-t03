class Psychologists < ActiveRecord::Migration[6.1]
  def change
    create_table :psychologists do |t|
      t.string :description
      t.string :professional_register
      t.string :speciality
      t.money :price
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
