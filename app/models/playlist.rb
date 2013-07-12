class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :items, class_name: 'PlaylistItem' 
  has_many :songs, through: :items
  attr_accessible :name # Mass assignment protection...
end
