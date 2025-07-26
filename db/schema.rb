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

ActiveRecord::Schema[8.0].define(version: 2025_07_26_185115) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "repositories", force: :cascade do |t|
    t.bigint "github_repo_id", null: false
    t.string "name", limit: 255, null: false
    t.string "full_name", null: false
    t.text "description"
    t.boolean "private", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["full_name"], name: "idx_repos_full_name"
    t.index ["github_repo_id"], name: "idx_repos_github_id", unique: true
    t.index ["private"], name: "idx_repos_private"
  end

  create_table "user_repositories", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "repository_id", null: false
    t.string "role", default: "member"
    t.datetime "access_granted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["repository_id"], name: "idx_user_repos_repo"
    t.index ["repository_id"], name: "index_user_repositories_on_repository_id"
    t.index ["role"], name: "idx_user_repos_role"
    t.index ["user_id", "repository_id"], name: "idx_user_repos_unique", unique: true
    t.index ["user_id"], name: "index_user_repositories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "github_id", null: false
    t.string "username", null: false
    t.string "email"
    t.string "avatar_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["github_id"], name: "index_users_on_github_id", unique: true
    t.index ["username"], name: "index_users_on_username"
  end

  add_foreign_key "user_repositories", "repositories"
  add_foreign_key "user_repositories", "users"
end
