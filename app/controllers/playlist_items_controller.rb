class PlaylistItemsController < ApplicationController

	def create
		# ...
	end 

	def edit
		# ...
	end 

	# rating of playlist item ???
	def update
		# ...
	end 

	def destroy
		# ... 
		@playlist = @user.playlists.find params[:playlist_id]
		# @playlist_item = PlaylistItem.find params[:id]
		@playlist_item = @playlist.items.find params[:id]
		@playlist_item.destroy
		redirect_to @playlist_item.playlist
	end


end
