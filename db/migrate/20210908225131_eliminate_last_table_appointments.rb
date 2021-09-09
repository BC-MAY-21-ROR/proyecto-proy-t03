class EliminateLastTableAppointments < ActiveRecord::Migration[6.1]
  def change
    drop_table :appointment
  end
end
