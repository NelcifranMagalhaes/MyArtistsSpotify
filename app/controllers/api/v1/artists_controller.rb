class Api::V1::ArtistsController < ApplicationController

	def index
		@followed = followed_method
		render json: @followed
	end


	private
	def followed_method
		RSpotify.authenticate(SPOT_ID, SPOT_SECRET)
		me = RSpotify::User.find('nyosama')
		# followed_artists = me.following(type: 'artist', limit: 50)
		me.playlists.each do |pl|
			artist = {
				name: pl.name,
			}
		end
	end
end
