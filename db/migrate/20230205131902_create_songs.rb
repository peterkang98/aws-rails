class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.belongs_to :artist, foreign_key: true
      t.belongs_to :album, foreign_key: true
      t.integer :bpm, limit: 2
      t.integer :capo, limit: 2
      t.text :lyrics
      t.string :lyricist
      t.string :composer
      t.bigint :views
      t.string :youtube_id
      t.datetime "created_at", null: false
    end
    add_foreign_key :albums, :artists
    add_index :artists, :name
    add_index :albums, :title
    add_index :songs, :title
  end
end
