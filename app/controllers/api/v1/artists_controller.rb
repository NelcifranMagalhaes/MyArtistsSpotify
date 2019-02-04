class Api::V1::ArtistsController < ApplicationController

	def index
		@followed = followed_method
		render json: @followed
	end


	private
	def followed_method

		x = RSpotify.authenticate(SPOT_ID, SPOT_SECRET)
		me = RSpotify::User.find('nyosama')
		array_artist = []
		me.playlists.each do |pl|
			artist = {
				name: pl.name,
			}
			array_artist.push(artist)
			unless Artist.find_by(name: pl.name)
				Artist.create!(name: pl.name)
			end
		end
		return array_artist
	end
end
