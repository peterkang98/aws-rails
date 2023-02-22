class AddKoreanNameToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :korean_name, :string
    rename_column :artists, :name, :original_name
  end
end
