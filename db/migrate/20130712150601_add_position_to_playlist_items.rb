class AddPositionToPlaylistItems < ActiveRecord::Migration
  def change
    add_column :playlist_items, :position, :integer
  end
end
