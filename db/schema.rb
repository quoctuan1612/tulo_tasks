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

ActiveRecord::Schema.define(version: 2022_05_20_134500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reports", id: { comment: "ID" }, comment: "Reports", force: :cascade do |t|
    t.bigint "document_incoming_id", null: false, comment: "Document Incoming Id"
    t.bigint "employee_id", null: false, comment: "Employee Id"
    t.string "role_name", null: false, comment: "Role Name"
    t.string "message", null: false, comment: "Message"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

  create_table "tasks", id: { comment: "ID" }, comment: "Tasks", force: :cascade do |t|
    t.bigint "document_incoming_id", null: false, comment: "Document Incoming Id"
    t.bigint "department_id", comment: "Department Id"
    t.bigint "employee_id", comment: "Employee Id"
    t.datetime "start_date", precision: 6, null: false, comment: "Start Date"
    t.datetime "end_date", precision: 6, null: false, comment: "End Date"
    t.boolean "is_approved_by_staff", default: false, comment: "Is Approved By Staff"
    t.boolean "is_approved_by_leader", default: false, comment: "Is Approved By Leader"
    t.boolean "is_approved_by_manger", default: false, comment: "Is Approved By Manager"
    t.datetime "created_at", null: false, comment: "Created At"
    t.datetime "updated_at", null: false, comment: "Updated At"
  end

end
