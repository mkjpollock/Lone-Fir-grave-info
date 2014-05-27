class MarkerTypesController < ApplicationController

	def new
		@marker_type = MarkerType.new
		@grave = Grave.find(params[:grafe_id])
	end

	def create
		@marker_type = MarkerType.new(type_params)
		@grave = Grave.find(params[:marker_type][:grave_id])
		if @marker_type.save
			@grave.marker_types << @marker_type
			flash[:notice] = "Marker Type Saved"
			redirect_to grafe_path(@grave.id)
		else
			redirect_to :back
		end
	end

	private

	def type_params
		params.require(:marker_type).permit(:description, :marker_on)
	end

end
