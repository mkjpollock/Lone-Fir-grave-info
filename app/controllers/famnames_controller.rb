class FamnamesController < ApplicationController
	
	def new
		@famname = Famname.new
		@grave = Grave.find(params[:grafe_id])
	end

	def create
		@famname = Famname.new(famname_params)
		if @famname.save
			flash[:notice] = "Name Saved"
			redirect_to grafe_path(@famname.grave.id)
		else
			redirect_to :back
		end
	end

	private

	def famname_params
		params.require(:famname).permit(:grave_id, :name)
	end

end
