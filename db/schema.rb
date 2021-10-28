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

ActiveRecord::Schema.define(version: 2021_10_22_174426) do

  create_table "comments", force: :cascade do |t|
    t.string "entry"
    t.integer "likes"
    t.integer "user_id", null: false
    t.integer "news_article_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["news_article_id"], name: "index_comments_on_news_article_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "dislikes", force: :cascade do |t|
    t.string "dislike"
    t.integer "news_article_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["news_article_id"], name: "index_dislikes_on_news_article_id"
    t.index ["user_id"], name: "index_dislikes_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "news_article_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["news_article_id"], name: "index_likes_on_news_article_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "loves", force: :cascade do |t|
    t.string "love_reaction"
    t.integer "news_article_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["news_article_id"], name: "index_loves_on_news_article_id"
    t.index ["user_id"], name: "index_loves_on_user_id"
  end

  create_table "news_articles", force: :cascade do |t|
    t.string "title"
    t.string "picture"
    t.string "author"
    t.string "date"
    t.string "source"
    t.string "comments"
    t.integer "likes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "picture"
    t.string "name"
    t.string "email"
    t.string "country"
    t.string "member_since"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "sads", force: :cascade do |t|
    t.string "sad_reaction"
    t.integer "news_article_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["news_article_id"], name: "index_sads_on_news_article_id"
    t.index ["user_id"], name: "index_sads_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "picture"
    t.string "name"
    t.string "email"
    t.string "country"
    t.string "member_since"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "news_articles"
  add_foreign_key "comments", "users"
  add_foreign_key "dislikes", "news_articles"
  add_foreign_key "dislikes", "users"
  add_foreign_key "likes", "news_articles"
  add_foreign_key "likes", "users"
  add_foreign_key "loves", "news_articles"
  add_foreign_key "loves", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "sads", "news_articles"
  add_foreign_key "sads", "users"
end
