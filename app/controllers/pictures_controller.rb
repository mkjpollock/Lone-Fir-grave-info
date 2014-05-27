class PicturesController < ApplicationController
	
	def new
		@picture = Picture.new
		@grave = Grave.find(params[:grafe_id])
	end

	def create
		@picture = Picture.new(picture_params)
		if @picture.save
			flash[:notice] = "Picture Saved"
			redirect_to grafe_path(@picture.grave.id)
		else
			redirect_to :back
		end
	end

	private

	def picture_params
		params.require(:picture).permit(:grave_id, :description, :image)
	end

end
