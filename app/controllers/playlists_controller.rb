class PlaylistsController < ApplicationController
  def index
  	@current_playlist = @user.current_playlist
  	@playlists = @user.playlists
  end

  def show
  	@playlist = @user.playlists.find params[:id]
  end

  def now_playling
  	@playlist = @user.playlists.where(:playing => true).first
  end

end
