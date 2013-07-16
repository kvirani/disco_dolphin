class User < ActiveRecord::Base
  attr_accessible :email, :password_digest

  has_many :playlists
  has_one :current_playlist, :class_name => "Playlist", :conditions => { :playing => true }

  # def current_playlist
  # 	playlists.where(:playing => true).first
  # end

end
