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

ActiveRecord::Schema.define(version: 2021_12_28_023409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "receivers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "workspace_id"
    t.bigint "thank_id"
    t.bigint "receiver_user_id"
    t.index ["receiver_user_id"], name: "index_receivers_on_receiver_user_id"
    t.index ["thank_id"], name: "index_receivers_on_thank_id"
    t.index ["workspace_id"], name: "index_receivers_on_workspace_id"
  end

  create_table "thanks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "workspace_id"
    t.bigint "sender_user_id"
    t.index ["sender_user_id"], name: "index_thanks_on_sender_user_id"
    t.index ["workspace_id"], name: "index_thanks_on_workspace_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "slack_user_id"
    t.string "slack_user_name"
    t.bigint "total_send_points"
    t.bigint "total_receive_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "workspace_id"
    t.index ["workspace_id"], name: "index_users_on_workspace_id"
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "receivers", "users", column: "receiver_user_id"
  add_foreign_key "thanks", "users", column: "sender_user_id"
end
