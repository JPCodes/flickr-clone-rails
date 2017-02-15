
ActiveRecord::Schema.define(version: 20170215171239) do

  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string  "content"
    t.integer "user_id"
    t.integer "photo_id"
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
