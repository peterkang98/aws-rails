class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :img_location
      t.belongs_to :artist
    end
  end
end
