class CreateFavourites < ActiveRecord::Migration[7.0]
  def change
    create_table :favourites do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :song, foreign_key: true
    end
    add_foreign_key :categories_songs, :songs
    add_foreign_key :categories_songs, :categories
    add_index :favourites, [:user_id, :song_id], unique: true
    remove_index :categories_songs, [:category_id, :song_id]
    add_index :categories_songs, [:category_id, :song_id], unique: true
  end
end
