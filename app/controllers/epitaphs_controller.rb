class EpitaphsController < ApplicationController

	def new
		@epitaph = Epitaph.new
		@grave = Grave.find(params[:grafe_id])
	end

	def create
		@epitaph = Epitaph.new(epitaph_params)
		@grave = Grave.find(params[:epitaph][:grave_id])
		if @grave.epitaphs << @epitaph
			flash[:notice] = "Epitaph Saved"
			redirect_to grafe_path(@grave.id)
		else
			redirect_to :back
		end
	end

	private

	def epitaph_params
		params.require(:epitaph).permit(:direction, :condition, :description)
	end
	
end
