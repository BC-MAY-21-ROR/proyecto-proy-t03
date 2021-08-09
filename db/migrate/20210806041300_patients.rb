class Patients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
