class AddPlayingToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :playing, :boolean
  end
end
