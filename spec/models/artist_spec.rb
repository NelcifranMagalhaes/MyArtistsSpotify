require 'rails_helper'

RSpec.describe Artist, type: :model do
  	it 'Artist is valid?' do
		artist = create(:artist)
	  	expect(artist).to be_valid
	end
end
