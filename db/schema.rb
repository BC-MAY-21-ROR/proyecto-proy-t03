# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_31_213231) do
<<<<<<< HEAD
=======

>>>>>>> b96bbdb71685b72bf17c572c875f484981101639

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.boolean "pay", default: false, null: false
    t.string "message"
    t.bigint "patient_id"
    t.bigint "psychologist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_appointment_on_patient_id"
    t.index ["psychologist_id"], name: "index_appointment_on_psychologist_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "phone"
    t.string "country"
    t.datetime "birth"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "psychologists", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "phone"
    t.string "country"
    t.datetime "birth"
    t.text "description"
    t.string "professional_register"
    t.string "speciality"
    t.money "price", scale: 2
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointment", "patients"
  add_foreign_key "appointment", "psychologists"
end
