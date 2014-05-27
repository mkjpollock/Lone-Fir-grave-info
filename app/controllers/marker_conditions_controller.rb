class MarkerConditionsController < ApplicationController

	def new
		@marker_condition = MarkerCondition.new
		@grave = Grave.find(params[:grafe_id])
	end

	def create
		@marker_condition = MarkerCondition.find_by_description(params[:marker_condition][:description])
		@grave = Grave.find(params[:marker_condition][:grave_id])
		@grave.marker_conditions << @marker_condition
		flash[:notice] = "Marker Condition Saved"
		redirect_to grafe_path(@grave.id)
	end
	
end
