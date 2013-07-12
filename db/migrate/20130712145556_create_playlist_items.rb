class CreatePlaylistItems < ActiveRecord::Migration
  def change
    create_table :playlist_items do |t|
      t.references :playlist
      t.references :song
      t.integer :rating

      t.timestamps
    end
    add_index :playlist_items, :playlist_id
    add_index :playlist_items, :song_id
  end
end
