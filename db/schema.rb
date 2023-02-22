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

ActiveRecord::Schema[7.0].define(version: 2023_02_06_092630) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.string "img_location"
    t.bigint "artist_id"
    t.index ["artist_id"], name: "index_albums_on_artist_id"
    t.index ["title"], name: "index_albums_on_title"
  end

  create_table "artists", force: :cascade do |t|
    t.string "original_name"
    t.string "img_location"
    t.bigint "views"
    t.string "korean_name"
    t.index ["korean_name"], name: "index_artists_on_korean_name"
    t.index ["original_name"], name: "index_artists_on_original_name"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "categories_songs", id: false, force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "song_id", null: false
    t.index ["category_id", "song_id"], name: "index_categories_songs_on_category_id_and_song_id", unique: true
    t.index ["song_id", "category_id"], name: "index_categories_songs_on_song_id_and_category_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "song_id"
    t.index ["song_id"], name: "index_favourites_on_song_id"
    t.index ["user_id", "song_id"], name: "index_favourites_on_user_id_and_song_id", unique: true
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.bigint "artist_id"
    t.bigint "album_id"
    t.integer "bpm", limit: 2
    t.integer "capo", limit: 2
    t.text "lyrics"
    t.string "lyricist"
    t.string "composer"
    t.bigint "views"
    t.string "youtube_id"
    t.datetime "created_at", null: false
    t.index ["album_id"], name: "index_songs_on_album_id"
    t.index ["artist_id"], name: "index_songs_on_artist_id"
    t.index ["title"], name: "index_songs_on_title"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "albums", "artists"
  add_foreign_key "categories_songs", "categories"
  add_foreign_key "categories_songs", "songs"
  add_foreign_key "favourites", "songs"
  add_foreign_key "favourites", "users"
  add_foreign_key "songs", "albums"
  add_foreign_key "songs", "artists"
end
