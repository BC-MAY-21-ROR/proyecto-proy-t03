class CreateTableAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.boolean :pay, null: false, default: false
      t.string :message
      t.belongs_to :patient, foreign_key: true
      t.belongs_to :psychologist, foreign_key: true
      
      t.timestamps
    end
  end
end
