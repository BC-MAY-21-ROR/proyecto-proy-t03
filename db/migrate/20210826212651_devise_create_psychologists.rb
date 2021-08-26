# frozen_string_literal: true

class DeviseCreatePsychologists < ActiveRecord::Migration[6.1]
  def change
    create_table :psychologists do |t|
      ## Extra Fields
      t.string :name
      t.string :gender
      t.string :phone
      t.string :country
      t.datetime :birth

      ## Professional Fields
      t.string :description
      t.string :professional_register
      t.string :speciality
      t.money :price

      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false
    end
  end
end
