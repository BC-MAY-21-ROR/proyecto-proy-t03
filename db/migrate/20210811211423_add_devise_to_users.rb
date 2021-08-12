# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[6.1]
  def self.up
    change_table :users do |t|
      ## Database authenticatable
      t.change :email, :string, null: false, default: ""
      t.change :password, :string, null: false, default: ""
      t.rename :password, :encrypted_password

    end
  end
end
