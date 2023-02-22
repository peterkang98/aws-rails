class AddIndexToArtistsKoreanName < ActiveRecord::Migration[7.0]
  def change
    add_index :artists, :korean_name
  end
end
