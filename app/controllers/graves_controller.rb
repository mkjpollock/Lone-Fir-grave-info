class GravesController < ApplicationController

	def index
		@graves = Grave.all
	end

	def new
		@grave = Grave.new
		authorize! :create, @grave
	end

	def create
		@grave = Grave.new(grave_params)
		if @grave.save
			flash[:notice] = "Database updated."
			redirect_to root_url
		else
			redirect_to :back
		end
	end

	def show
		@grave = Grave.find(params[:id])
	end

	private

	def grave_params
		params.require(:grave).permit(:mainpic, :name, :description, :user_id)
	end

end