# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160703141207) do

  create_table "comments", force: :cascade do |t|
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.string   "title"
    t.text     "body"
    t.string   "subject"
    t.integer  "user_id",          null: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "countries", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "country_translations", force: :cascade do |t|
    t.integer  "country_id", null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.text     "body"
  end

  add_index "country_translations", ["country_id"], name: "index_country_translations_on_country_id"
  add_index "country_translations", ["locale"], name: "index_country_translations_on_locale"

  create_table "institute_translations", force: :cascade do |t|
    t.integer  "institute_id", null: false
    t.string   "locale",       null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "name"
    t.text     "description"
  end

  add_index "institute_translations", ["institute_id"], name: "index_institute_translations_on_institute_id"
  add_index "institute_translations", ["locale"], name: "index_institute_translations_on_locale"

  create_table "institutes", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "institutes_posts", force: :cascade do |t|
    t.integer  "institute_id"
    t.integer  "post_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "institutes_projects", force: :cascade do |t|
    t.integer  "institute_id"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "institutes_slides", force: :cascade do |t|
    t.integer  "institute_id"
    t.integer  "slide_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "member_translations", force: :cascade do |t|
    t.integer  "member_id",  null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "member_translations", ["locale"], name: "index_member_translations_on_locale"
  add_index "member_translations", ["member_id"], name: "index_member_translations_on_member_id"

  create_table "members", force: :cascade do |t|
    t.string   "member_email"
    t.boolean  "member_status"
    t.datetime "membership_date"
    t.integer  "membershiptype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_translations", force: :cascade do |t|
    t.integer  "page_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "body"
  end

  add_index "page_translations", ["locale"], name: "index_page_translations_on_locale"
  add_index "page_translations", ["page_id"], name: "index_page_translations_on_page_id"

  create_table "pages", force: :cascade do |t|
    t.string   "pagelocation"
    t.boolean  "publish"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pixels", force: :cascade do |t|
    t.integer  "pixels"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_translations", force: :cascade do |t|
    t.integer  "post_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "body"
  end

  add_index "post_translations", ["locale"], name: "index_post_translations_on_locale"
  add_index "post_translations", ["post_id"], name: "index_post_translations_on_post_id"

  create_table "posts", force: :cascade do |t|
    t.date     "published_at"
    t.integer  "post_type"
    t.decimal  "post_value"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.date     "event_date"
    t.time     "event_time"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "event_location"
    t.string   "event_link"
    t.boolean  "is_event"
  end

  create_table "posts_watanprograms", force: :cascade do |t|
    t.integer  "watanprogram_id"
    t.integer  "post_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "project_translations", force: :cascade do |t|
    t.integer  "project_id",  null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.text     "description"
  end

  add_index "project_translations", ["locale"], name: "index_project_translations_on_locale"
  add_index "project_translations", ["project_id"], name: "index_project_translations_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.integer  "institute_id"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "publish"
    t.integer  "projectstatus_id"
    t.integer  "priority_id"
    t.integer  "assigned_to"
    t.integer  "country_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "projects_watanprograms", force: :cascade do |t|
    t.integer  "watanprogram_id"
    t.integer  "project_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "site_documents", force: :cascade do |t|
    t.string   "name"
    t.string   "documentable_type"
    t.integer  "documentable_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "site_images", force: :cascade do |t|
    t.string   "name"
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "slide_translations", force: :cascade do |t|
    t.integer  "slide_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "body"
    t.string   "imgalt"
  end

  add_index "slide_translations", ["locale"], name: "index_slide_translations_on_locale"
  add_index "slide_translations", ["slide_id"], name: "index_slide_translations_on_slide_id"

  create_table "slides", force: :cascade do |t|
    t.boolean  "publish"
    t.integer  "watanprogram_id"
    t.integer  "transition_id"
    t.string   "justify"
    t.integer  "slotamount"
    t.string   "logo"
    t.integer  "logo_datay"
    t.integer  "logo_datastart"
    t.integer  "title_datay"
    t.integer  "title_datastart"
    t.integer  "text_datay"
    t.integer  "text_datastart"
    t.integer  "side"
    t.integer  "topline"
    t.text     "blurb"
    t.integer  "blurblines"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "transitions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "watanprogram_translations", force: :cascade do |t|
    t.integer  "watanprogram_id", null: false
    t.string   "locale",          null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.text     "body"
  end

  add_index "watanprogram_translations", ["locale"], name: "index_watanprogram_translations_on_locale"
  add_index "watanprogram_translations", ["watanprogram_id"], name: "index_watanprogram_translations_on_watanprogram_id"

  create_table "watanprograms", force: :cascade do |t|
    t.string   "pgrmcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
