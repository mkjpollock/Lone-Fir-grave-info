class MarkerMaterialsController < ApplicationController

	def new
		@marker_material = MarkerMaterial.new
		@grave = Grave.find(params[:grafe_id])
	end

	def create
		@marker_material = MarkerMaterial.find_by_description(params[:marker_material][:description])
		@grave = Grave.find(params[:marker_material][:grave_id])
		@grave.marker_materials << @marker_material
		flash[:notice] = "Marker Material Saved"
		redirect_to grafe_path(@grave.id)
	end

end
