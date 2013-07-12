class Song < ActiveRecord::Base
  belongs_to :genre
  has_many :playlist_items
  has_many :playlists, through: :playlist_items
  attr_accessible :album_name, :artist_name, :title, :genre
end
