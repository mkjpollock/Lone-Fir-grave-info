class HomesController < ApplicationController

	def index
		@pictures = Picture.all
	end

end