class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist_name
      t.string :album_name
      t.references :genre

      t.timestamps
    end
    add_index :songs, :genre_id
  end
end
