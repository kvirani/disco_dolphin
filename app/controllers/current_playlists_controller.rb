class CurrentPlaylistsController < ApplicationController

	def show
		@playlist = @user.playlists.where(:playing => true).first
	end

	def create
		@user.playlists.update_all :playing => false
		@playlist = @user.playlists.find(params[:playlist_id])
		@playlist.playing = true
		@playlist.save
		redirect_to :back
	end

end
