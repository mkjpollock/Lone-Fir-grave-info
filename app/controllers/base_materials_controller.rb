class BaseMaterialsController < ApplicationController

	def new
		@base_material = BaseMaterial.new
		@grave = Grave.find(params[:grafe_id])
		@base_materials = BaseMaterial.all
	end

	def create
		@base_material = BaseMaterial.find_by_description(params[:base_material][:description])
		@grave = Grave.find(params[:base_material][:grave_id])
		@grave.base_materials << @base_material
		flash[:notice] = "Base Material Saved"
		redirect_to grafe_path(@grave.id)
	end

end
