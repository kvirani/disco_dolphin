class PlaylistItem < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :song
  attr_accessible :rating, :song, :playlist
end
